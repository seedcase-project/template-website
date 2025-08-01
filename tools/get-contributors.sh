#!/usr/bin/env bash

# Get a list of contributors to this repository and save it to
# _contributors.qmd.tmp file. It also:
#
# - Formats users into Markdown links to their GitHub profiles.
# - Removes any usernames with the word "bot" in them.
# - Removes the trailing comma from the list.
repo_spec=${1}
gh api \
  /repos/$repo_spec/contributors \
  --template '{{range .}} [\@{{.login}}]({{.html_url}}){{"\n"}}{{end}}' | \
  grep -v "\[bot\]" | \
  tr '\n' ', ' | \
  sed -e 's/,$//' > _contributors.qmd.tmp
