@_default:
    just --list --unsorted

@_checks: check-spelling check-urls check-commits

@_builds: build-contributors build-website build-readme

# Test if it is or isn't a Seedcase website and uses netlify or gh-pages and the website or book format
@_test-seedcase-true: (test "true" "netlify" "website" "complete") (test "true" "netlify" "book" "complete") (test "true" "gh-pages" "website" "complete") (test "true" "gh-pages" "book" "complete")

@_test-seedcase-false: (test "false" "netlify" "website" "complete") (test "false" "netlify" "book" "complete") (test "false" "gh-pages" "website" "complete") (test "false" "gh-pages" "book" "complete")

@_test-simple: (test "false" "netlify" "website" "simple") (test "false" "netlify" "book" "simple") (test "false" "gh-pages" "website" "simple") (test "false" "gh-pages" "book" "simple")

@_tests: _test-seedcase-true _test-seedcase-false _test-simple

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
    # Add theme if it doesn't exist, update if it does
    quarto update seedcase-project/seedcase-theme --no-prompt

# Update files in the template from the copier parent folder
update-template:
    cp -f CODE_OF_CONDUCT.md .pre-commit-config.yaml .gitignore .typos.toml .editorconfig .rumdl.toml \
      template/complete/
    cp -f .gitignore \
      template/simple/
    mkdir -p template/complete/tools
    cp -f tools/get-contributors.sh \
      template/complete/tools/
    cp -f .github/dependabot.yml .github/pull_request_template.md \
      template/complete/.github/
    cp -f .github/workflows/release-project.yml .github/workflows/dependency-review.yml \
      template/complete/.github/workflows/

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

# Install lychee from https://lychee.cli.rs/guides/getting-started/

# Check that URLs work
check-urls:
    lychee . \
      --verbose \
      --extensions md,qmd,jinja \
      --exclude-path "_badges.qmd"

# Format Markdown files
format-md:
    uvx rumdl fmt --silent

# Test that a website can be created from the template, with parameters for: `is_seedcase_website` (true or false) and `hosting_provider` (either "gh-pages" or "netlify")
test is_seedcase_website="true" hosting_provider="netlify" website_format="website" template_type="complete":
    sh ./test-template.sh {{ is_seedcase_website }} {{ hosting_provider }} {{ website_format }} {{ template_type }}

# Test template creation through use of the question approach
test-manual:
    mkdir -p _temp/manual
    uvx copier copy -r HEAD --trust . _temp/manual/test-template

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
    sh ./tools/get-contributors.sh seedcase-project/template-website > docs/includes/_contributors.qmd
