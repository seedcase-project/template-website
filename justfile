@_default:
    just --list --unsorted

@_checks: check-spelling check-commits
@_builds: build-contributors build-website build-readme
# Test if it is or isn't a Seedcase website and uses netlify or gh-pages
@_tests: (test "true" "netlify") (test "false" "netlify") (test "true" "gh-pages") (test "false" "gh-pages")

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
  cp CODE_OF_CONDUCT.md .pre-commit-config.yaml .gitignore .typos.toml .editorconfig template/
  mkdir -p template/tools
  cp tools/get-contributors.sh template/tools/
  cp .github/dependabot.yml .github/pull_request_template.md template/.github/
  cp .github/workflows/release-project.yml template/.github/workflows/

# Check the commit messages on the current branch that are not on the main branch
check-commits:
  #!/usr/bin/env bash
  branch_name=$(git rev-parse --abbrev-ref HEAD)
  number_of_commits=$(git rev-list --count HEAD ^main)
  if [[ ${branch_name} != "main" && ${number_of_commits} -gt 0 ]]
  then
    # If issue happens, try `uv tool update-shell`
    uvx --from commitizen cz check --rev-range main..HEAD
  else
    echo "On 'main' or current branch doesn't have any commits."
  fi

# Check for spelling errors in files
check-spelling:
  uvx typos

# Test that a website can be created from the template, with parameters for: `is_seedcase_website` (true or false) and `hosting_provider` (either "gh-pages" or "netlify")
test is_seedcase_website="true" hosting_provider="netlify":
  #!/usr/bin/env bash
  test_name="test-website-{{ hosting_provider }}"
  test_dir="$(pwd)/_temp/{{ is_seedcase_website }}/$test_name"
  template_dir="$(pwd)"
  commit=$(git rev-parse HEAD)
  rm -rf $test_dir
  mkdir -p $test_dir
  copy () {
    # vcs-ref means the current commit/head, not a tag.
    uvx copier copy $1 $2 \
      --vcs-ref=$3 \
      --defaults \
      --data seedcase_website={{ is_seedcase_website }} \
      --data hosting_provider={{ hosting_provider }} \
      --data website_github_repo="fake/repo" \
      --data review_team="@fake/team" \
      --data author_given_name="First" \
      --data author_family_name="Last" \
      --data github_board_number="14" \
      --skip-tasks \
      --trust
  }
  # Check initial creation
  echo "Testing copy for new projects when: 'is_seedcase_website'='{{ is_seedcase_website }}', 'hosting_provider'='{{ hosting_provider }}' -----------"
  (
    cd $test_dir &&
      copy $template_dir $test_dir $commit &&
      git init -b main &&
      git add . &&
      git commit --quiet -m "test: initial copy"
  )
  # TODO: Find some way to test the `update` command
  # Check that recopy works
  echo "Testing recopy when: 'is_seedcase_website'='{{ is_seedcase_website }}', 'hosting_provider'='{{ hosting_provider }}' -----------"
  (
    cd $test_dir &&
      rm .cz.toml &&
      git add . &&
      git commit --quiet -m "test: preparing to recopy from the template" &&
      uvx copier recopy \
        --vcs-ref=$commit \
        --defaults \
        --overwrite \
        --trust
  )
  # Check that copying onto an existing website works
  echo "Testing copy in existing projects when: 'is_seedcase_website'='{{ is_seedcase_website }}', 'hosting_provider'='{{ hosting_provider }}' -----------"
  (
    cd $test_dir &&
      rm .cz.toml .copier-answers.yml &&
      git add . &&
      git commit --quiet -m "test: preparing to copy onto an existing website" &&
      copy $template_dir $test_dir $commit
  )
  # Checks and builds
  (
    cd $test_dir &&
      just run-all
  )

# Clean up any leftover and temporary build files
cleanup:
  rm -rf _temp

# Build the website using Quarto
build-website:
  uvx --from quarto quarto render

# Re-build the README file from the Quarto version
build-readme:
  uvx --from quarto quarto render README.qmd --to gfm

# Generate a Quarto include file with the contributors
build-contributors:
  sh ./tools/get-contributors.sh seedcase-project/template-website
