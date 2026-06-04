#!/usr/bin/env bash

# Needs four arguments:
#
# 1. for_seedcase: true or false
# 2. hosting_provider: e.g., "github", "gitlab", etc.
# 3. website_format: "website" or "book"
# 4. template_type: "simple" or "complete"

# Argument naming -----
for_seedcase="${1}"
hosting_provider="${2}"
website_format="${3}"
template_type="${4}"

if [ -z "$for_seedcase" ] || [ -z "$hosting_provider" ] || [ -z "$website_format" ] || [ -z "$template_type" ]; then
  echo "Usage: sh $0 <for_seedcase> <hosting_provider> <website_format> <template_type>"
  echo "Example: sh $0 true netlify website complete"
  exit 1
fi

# Set up variables and functions for the test -----
test_name="$for_seedcase-$template_type-$website_format-$hosting_provider"
test_dir="$(pwd)/_temp/auto/$test_name"
template_dir="$(pwd)"

# Needs three arguments:
#
# 1. Template directory
# 2. Destination directory
# 3. VCS ref (commit, branch, tag, etc.)
copy () {
  # '-r HEAD' means use the HEAD, including uncommitted changes.
  uvx copier copy $1 $2 \
    -r HEAD \
    --defaults \
    --data for_seedcase=$for_seedcase \
    --data hosting_provider=$hosting_provider \
    --data website_format=$website_format \
    --data template_type=$template_type \
    --data github_user="fake" \
    --overwrite
}

# Pre-test setup -----
# Remove the leftover directory from previous runs
rm -rf $test_dir
mkdir -p $test_dir

# Check initial creation -----
# TODO: Find some way to test the `update` command
# Any step that fails will exit the script with an error and not continue
echo "Testing copy for new projects when: 'for_seedcase'='$for_seedcase', 'hosting_provider'='$hosting_provider', 'website_format'='$website_format', 'template_type'='$template_type' -----------"
(
  cd $test_dir &&
    copy $template_dir $test_dir &&
    git init -b main &&
    git add . &&
    git commit --quiet -m "test: initial copy" &&
    # Check that recopy works -----
    echo "Testing recopy when: 'for_seedcase'='$for_seedcase', 'hosting_provider'='$hosting_provider', 'website_format'='$website_format', 'template_type'='$template_type' -----------" &&
    rm .gitignore &&
    git add . &&
    git commit --quiet -m "test: preparing to recopy from the template" &&
    uvx copier recopy \
      -r HEAD \
      --defaults \
      --overwrite &&
    # Check that copying onto an existing website works -----
    echo "Testing copy in existing projects when: 'for_seedcase'='$for_seedcase', 'hosting_provider'='$hosting_provider', 'website_format'='$website_format', 'template_type'='$template_type' -----------" &&
    rm .gitignore .copier-answers.yml &&
    git add . &&
    git commit --quiet -m "test: preparing to copy onto an existing website" &&
    copy $template_dir $test_dir
)
