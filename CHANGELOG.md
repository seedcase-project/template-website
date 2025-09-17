# Changelog

Since we follow [Conventional
Commits](https://decisions.seedcase-project.org/why-conventional-commits),
we're able to automatically create a release with
[Commitizen](https://decisions.seedcase-project.org/why-semantic-release-with-commitizen)
based on the commit messages. This means that releases can happen quite
often, sometimes several in a day. It also means any individual release
will not have many changes within it. Below is a list of releases along
with what was changed within it.

## 0.17.4 (2025-09-17)

### Refactor

- :pencil2: match workflow job name with filename (#112)
- :technologist: simplify PR template even more (#116)

## 0.17.3 (2025-09-11)

### Refactor

- :pencil2: simplify PR template description placeholder (#105)

## 0.17.2 (2025-09-05)

### Refactor

- :recycle: generate `_contributors.yml` into the `includes/` folder (#90)

## 0.17.1 (2025-09-05)

### Refactor

- :hammer: use `update` theme to match name of recipe (#100)

## 0.17.0 (2025-09-05)

### Feat

- :sparkles: add CHANGELOG, with explanation of releases (#95)

## 0.16.12 (2025-09-05)

### Refactor

- :recycle: ignore other, non-relevant files when listing todos (#98)

## 0.16.11 (2025-09-05)

### Fix

- :pencil2: value should be `isIdenticalTo` in `.zenodo.json` (#97)

## 0.16.10 (2025-09-04)

### Fix

- :bug: `github_repo` needs to be a question to store properly (#92)

## 0.16.9 (2025-09-04)

### Refactor

- :pushpin: update pre-commit hook versions (#94)

## 0.16.8 (2025-09-04)

### Refactor

- :pencil2: simplify justfile recipe Jinja tags (#99)

## 0.16.7 (2025-09-04)

### Refactor

- :fire: `update-from-template` workflow didn't work as expected (#91)

## 0.16.6 (2025-09-01)

### Refactor

- :wrench: don't use `echo: false` by default in Quarto config (#80)

## 0.16.5 (2025-09-01)

### Refactor

- :pushpin: update pre-commit hook versions (#79)

## 0.16.4 (2025-09-01)

### Refactor

- :fire: these snippets are rarely used, remove to simplify (#76)

## 0.16.3 (2025-09-01)

### Refactor

- :lipstick: use `svg` for badge for better resolution (#82)

## 0.16.2 (2025-09-01)

### Refactor

- :recycle: store `github_repo` into copier answer file (#84)

## 0.16.1 (2025-09-01)

### Refactor

- :memo: use bash code chunk style for post-copy message (#75)

## 0.16.0 (2025-09-01)

### Feat

- :lock: add dependency security review workflow (#74)

## 0.15.9 (2025-08-08)

### Refactor

- :recycle: revise so `github_repo` is name of folder (#60)

## 0.15.8 (2025-08-08)

### Refactor

- :recycle: rename to `is_seedcase_website` (#64)

## 0.15.7 (2025-08-07)

### Fix

- :bug: need the `metadata-files` in `README.qmd` (#59)

## 0.15.6 (2025-08-07)

### Refactor

- :memo: add link to guide in post-copy message (#57)

## 0.15.5 (2025-08-07)

### Fix

- :pencil2: used the wrong echo text for the `check-commits` recipe (#53)

## 0.15.4 (2025-08-07)

### Fix

- :pencil2: forgot to include commas at end of JSON items (#54)

## 0.15.3 (2025-08-07)

### Fix

- :lock: use `read-all` permissions for workflow at top level (#52)

## 0.15.2 (2025-08-07)

### Refactor

- :art: use code blocks in post-copy messages, not `$` (#55)

## 0.15.1 (2025-08-07)

### Fix

- :art: remove empty jinja lines (#51)

## 0.15.0 (2025-08-07)

### Feat

- :sparkles: add GoatCounter includes file (#50)

## 0.14.1 (2025-08-07)

### Fix

- :bug: seedcase logo was wrong path (#48)

## 0.14.0 (2025-08-07)

### Feat

- :sparkles: add CONTRIBUTING guide to template (#29)

## 0.13.0 (2025-08-07)

### Feat

- :sparkles: add Quarto config files to template (#22)

## 0.12.0 (2025-08-07)

### Feat

- :sparkles: add Contributor Code of Conduct to template (#44)

## 0.11.0 (2025-08-07)

### Feat

- :sparkles: fill in README of template (#34)

### Fix

- :bug: `get-contributors.sh` should not output with `.tmp` ending (#43)

## 0.10.0 (2025-08-07)

### Feat

- :sparkles: add `add-to-project` workflow, along with copier question (#18)

## 0.9.0 (2025-08-06)

### Feat

- :sparkles: add `CODEOWNERS` to template (#30)

## 0.8.0 (2025-08-06)

### Feat

- :sparkles: add `.zenodo.json` to link metadata to Zenodo (#27)

## 0.7.1 (2025-08-06)

### Refactor

- :fire: remove `quarto add` task, so no dependency on it (#39)

## 0.7.0 (2025-08-06)

### Feat

- :sparkles: add justfile to template (#35)

## 0.6.0 (2025-08-06)

### Feat

- :sparkles: add VS Code settings and extension recommend files (#24)
- :sparkles: add auto-release workflow to template (#26)

## 0.5.0 (2025-08-06)

### Feat

- :sparkles: workflow to check updates from template (#28)

## 0.4.0 (2025-08-05)

### Feat

- :sparkles: add the 404 page, either as a Seedcase website or not (#19)

## 0.3.0 (2025-08-04)

### Feat

- :sparkles: sync basic development files to template (#17)
- :sparkles: initial setup of template, with empty README (#15)

## 0.2.0 (2025-08-04)

### Feat

- :sparkles: add CC-BY-4.0 LICENSE to template (#16)

## 0.1.0 (2025-08-01)

- start tracking changelog and making releases
