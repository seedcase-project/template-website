#!/usr/bin/env bash

# Needs four arguments:
#
# 1. is_seedcase_website: true or false
# 2. hosting_provider: e.g., "github", "gitlab", etc.
# 3. website_format: "website" or "book"
# 4. template_type: "simple" or "complete"

# Argument naming -----
is_seedcase_website="${1}"
hosting_provider="${2}"
website_format="${3}"
template_type="${4}"

if [ -z "$is_seedcase_website" ] || [ -z "$hosting_provider" ] || [ -z "$website_format" ] || [ -z "$template_type" ]; then
  echo "Usage: sh $0 <is_seedcase_website> <hosting_provider> <website_format> <template_type>"
  echo "Example: sh $0 true netlify website complete"
  exit 1
fi

# Set up variables and functions for the test -----
test_name="$template_type-$website_format-$hosting_provider"
test_dir="$(pwd)/_temp/$is_seedcase_website/$test_name"
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
    --data is_seedcase_website=$is_seedcase_website \
    --data website_type=$hosting_provider \
    --data hosting_provider=$hosting_provider \
    --data website_format=$website_format \
    --data template_type=$template_type \
    --data github_user="fake" \
    --data review_team="@fake/team" \
    --data author_given_name="First" \
    --data author_family_name="Last" \
    --data github_board_number="14" \
    --overwrite \
    --skip-tasks \
    --trust
}

# Pre-test setup -----
# Remove the leftover directory from previous runs
rm -rf $test_dir
mkdir -p $test_dir

# Check initial creation -----
# TODO: Find some way to test the `update` command
# Any step that fails will exit the script with an error and not continue
echo "Testing copy for new projects when: 'is_seedcase_website'='$is_seedcase_website', 'hosting_provider'='$hosting_provider', 'website_format'='$website_format', 'template_type'='$template_type' -----------"
(
  cd $test_dir &&
    copy $template_dir $test_dir &&
    git init -b main &&
    git add . &&
    git commit --quiet -m "test: initial copy" &&
    # Check that recopy works -----
    echo "Testing recopy when: 'is_seedcase_website'='$is_seedcase_website', 'hosting_provider'='$hosting_provider', 'website_format'='$website_format', 'template_type'='$template_type' -----------" &&
    rm .gitignore &&
    git add . &&
    git commit --quiet -m "test: preparing to recopy from the template" &&
    uvx copier recopy \
      -r HEAD \
      --defaults \
      --overwrite \
      --skip-tasks \
      --trust &&
    # Check that copying onto an existing website works -----
    echo "Testing copy in existing projects when: 'is_seedcase_website'='$is_seedcase_website', 'hosting_provider'='$hosting_provider', 'website_format'='$website_format', 'template_type'='$template_type' -----------" &&
    rm .gitignore .copier-answers.yml &&
    git add . &&
    git commit --quiet -m "test: preparing to copy onto an existing website" &&
    copy $template_dir $test_dir
)
