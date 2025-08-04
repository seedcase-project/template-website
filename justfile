@_default:
    just --list --unsorted

@_checks: check-spelling check-commits
@_tests: (test "netlify") (test "gh-pages")
@_builds: build-contributors build-website build-readme

# Run all build-related recipes in the justfile
run-all: update-quarto-theme update-template _checks _tests _builds

# Install the pre-commit hooks
install-precommit:
  # Install pre-commit hooks
  uvx pre-commit install
  # Run pre-commit hooks on all files
  uvx pre-commit run --all-files
  # Update versions of pre-commit hooks
  uvx pre-commit autoupdate

# Update the Quarto seedcase-theme extension
update-quarto-theme:
  quarto add seedcase-project/seedcase-theme --no-prompt

# Update files in the template from the copier parent folder
update-template:
  cp .pre-commit-config.yaml .gitignore .typos.toml .editorconfig template/
  mkdir -p template/tools
  cp tools/get-contributors.sh template/tools/
  cp .github/dependabot.yml .github/pull_request_template.md template/.github/
  cp .github/workflows/build-website.yml template/.github/workflows/

# Check the commit messages on the current branch that are not on the main branch
check-commits:
  #!/bin/zsh
  branch_name=$(git rev-parse --abbrev-ref HEAD)
  number_of_commits=$(git rev-list --count HEAD ^main)
  if [[ ${branch_name} != "main" && ${number_of_commits} -gt 0 ]]
  then
    uvx --from commitizen cz check --rev-range main..HEAD
  else
    echo "On `main` or current branch doesn't have any commits."
  fi

# Check for spelling errors in files
check-spelling:
  uvx typos

# Test that a website can be created from the template, with parameters for: `hosting_provider` (either "gh-pages" or "netlify")
test hosting_provider="netlify":
  #!/bin/zsh
  test_name="test-website-{{ hosting_provider }}"
  test_dir="$(pwd)/_temp/$test_name"
  template_dir="$(pwd)"
  commit=$(git rev-parse HEAD)
  rm -rf $test_dir
  # vcs-ref means the current commit/head, not a tag.
  uvx copier copy $template_dir $test_dir \
    --vcs-ref=$commit \
    --defaults \
    --data hosting_provider={{ hosting_provider }} \
    --data website_github_repo="fake/repo" \
    --trust
  # Run checks in the generated test website
  cd $test_dir
  git add .
  git commit -m "test: initial copy"
  just check-spelling
  # TODO: Find some way to test the `update` command
  # Check that recopy works
  echo "Testing recopy command -----------"
  rm .cz.toml
  git add .
  git commit -m "test: preparing to recopy from the template"
  uvx copier recopy \
    --vcs-ref=$commit \
    --defaults \
    --overwrite \
    --trust
  # Check that copying onto an existing website works
  echo "Using the template in an existing website command -----------"
  rm .cz.toml .copier-answers.yml
  git add .
  git commit -m "test: preparing to copy onto an existing website"
  uvx copier copy \
    $template_dir $test_dir \
    --vcs-ref=$commit \
    --defaults \
    --data hosting_provider={{ hosting_provider }} \
    --data website_github_repo="fake/repo" \
    --trust \
    --overwrite

# Clean up any leftover and temporary build files
cleanup:
  #!/bin/zsh
  rm -rf _temp

# Build the website using Quarto
build-website:
  uvx --from quarto quarto render

# Re-build the README file from the Quarto version
build-readme:
  uvx --from quarto quarto render README.qmd --to gfm

# Generate a Quarto include file with the contributors
build-contributors:
  sh ./tools/get-contributors.sh seedcase-project/template-workshop
