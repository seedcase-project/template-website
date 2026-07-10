@_default:
  just --list --unsorted

# Run all build-related recipes in the justfile
run-all: update-quarto-theme sync-template-files check-all format-md test-all build-all

# Run all check-related recipes
check-all: check-spelling check-urls

# Run all test-related recipes
test-all: _test-seedcase-true _test-seedcase-false _test-simple

# Run all build-related recipes
build-all: build-contributors build-website build-readme

# List all TODO items in the repository
list-todos:
  grep -R -n \
  --exclude-dir=.quarto \
  --exclude-dir=template \
  --exclude-dir=_temp \
  --exclude-dir=_site \
  --exclude=justfile \
  --exclude=copier.yaml \
  "TODO" *

# Install the pre-commit hooks
install-precommit:
  uvx pre-commit install
  uvx pre-commit autoupdate
  uvx pre-commit run --all-files

# Update (or add if not present) the Quarto seedcase-theme extension
update-quarto-theme:
  quarto update seedcase-project/seedcase-theme --no-prompt

# Update files in the template from the Copier parent folder
sync-template-files:
  cp -f CODE_OF_CONDUCT.md .pre-commit-config.yaml .gitignore .editorconfig \
    template/complete/
  cp -f .gitignore \
    template/simple/
  cp -f .config/typos.toml \
    template/complete/.config/
  mkdir -p template/complete/tools
  cp -f tools/get-contributors.sh \
    template/complete/tools/
  cp -f .github/dependabot.yml .github/pull_request_template.md \
    template/complete/.github/

# Check for spelling errors in files
check-spelling:
  uvx typos --config .config/typos.toml

# Check that URLs work
check-urls:
  lychee . \
    --verbose \
    --extensions md,qmd,jinja \
    --exclude "github\.com" \
    --exclude-path "_badges.qmd"

# Format Markdown files
format-md:
  # Use both rumdl and panache, for different purposes
  uvx rumdl fmt --silent
  uvx --from panache-cli panache format . --quiet

# Test that a website can be created from the template, with parameters for: `for_seedcase` (true or false) and `hosting_provider` (either "gh-pages" or "netlify")
test for_seedcase="true" hosting_provider="netlify" website_format="website" template_type="complete":
    sh ./test-template.sh {{ for_seedcase }} {{ hosting_provider }} {{ website_format }} {{ template_type }}

@_test-seedcase-true: (test "true" "netlify" "website" "complete") (test "true" "netlify" "book" "complete") (test "true" "gh-pages" "website" "complete") (test "true" "gh-pages" "book" "complete")
@_test-seedcase-false: (test "false" "netlify" "website" "complete") (test "false" "netlify" "book" "complete") (test "false" "gh-pages" "website" "complete") (test "false" "gh-pages" "book" "complete")
@_test-simple: (test "false" "netlify" "website" "simple") (test "false" "netlify" "book" "simple") (test "false" "gh-pages" "website" "simple") (test "false" "gh-pages" "book" "simple")

# Test template creation through use of the question approach
test-manual:
  mkdir -p _temp/manual
  rm -rf _temp/manual/test-template
  uvx copier copy -r HEAD . _temp/manual/test-template

# Clean up any leftover and temporary build files
cleanup:
  rm -rf _temp

# Re-build the README file from the Quarto version
build-readme:
  uvx --from quarto quarto render README.qmd --to gfm

# Generate a Quarto include file with the contributors
build-contributors:
  sh ./tools/get-contributors.sh seedcase-project/template-website > docs/includes/_contributors.qmd

# Build the website using Quarto
build-website:
  uvx --from quarto quarto render

# Preview the website with automatic reload on changes
preview-website:
  uvx --from quarto quarto preview

# Check for and apply updates from the template
update-from-template:
  uvx copier update --defaults

# Reset repo changes to match the template
reset-from-template:
  uvx copier recopy --defaults
