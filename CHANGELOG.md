# Changelog

Since we follow [Conventional
Commits](https://decisions.seedcase-project.org/why-conventional-commits/) when
writing commit messages, we're able to automatically create formal "releases" of
the template based on the commit messages. Releases in the context of template
are when changes occur to the `template/` files or to the `copier.yaml` files.
The releases are also published to Zenodo for easier discovery, archival, and
citation purposes. We use
[Cocogitto](https://decisions.seedcase-project.org/why-semantic-release-with-cocogitto/)
to be able to automatically create these releases, which uses
[SemVar](https://semverdoc.org) as the version numbering scheme, and [Git
Cliff](https://decisions.seedcase-project.org/why-changelog-with-git-cliff/) to
generate the changelog based on the commit messages.

Because releases are created based on commit messages, a new release is created
quite often---sometimes several times in a day. This also means that any
individual release will not have many changes within it. Below is a list of the
releases we've made so far, along with what was changed within each release.

Commits from bots, like `dependabot` or `pre-commit-ci`, are not included in the
changelog.

## [0.30.4](https://github.com/seedcase-project/template-website/compare/0.30.3..0.30.4) - 2026-07-13

### 🐛 Fixes

- Escape `{{ version }}` tag in `cog.toml` so Jinja leaves it
  [#264](https://github.com/seedcase-project/template-website/pull/264) by
  [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([6d4689f](https://github.com/seedcase-project/template-website/commit/6d4689f7ee146139ce1e039dee48c3733ca42a9e))

### 💄 Styling

- Small stylistic updates from t-squared
  [#263](https://github.com/seedcase-project/template-website/pull/263) by
  [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([62eede4](https://github.com/seedcase-project/template-website/commit/62eede4ab07e12b6df1ea95a25833acf74d0039d))

### 👩‍💻 Miscellaneous

- Include Jinja files in Markdown formatters, plus reformat them
  [#257](https://github.com/seedcase-project/template-website/pull/257) by
  [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([0cdaa15](https://github.com/seedcase-project/template-website/commit/0cdaa154c9beb685014f9980c0822a8d27101fca))

## [0.30.3](https://github.com/seedcase-project/template-website/compare/0.30.2..0.30.3) - 2026-07-10

### 🐛 Fixes

- Ignore GitHub in URL checker as it often gets blocked
  [#258](https://github.com/seedcase-project/template-website/pull/258) by
  [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([a499466](https://github.com/seedcase-project/template-website/commit/a499466881a3c7f7c2635368f063b2200835b884))
- Correct the use of `-%` or `%-` in Jinja
  [#261](https://github.com/seedcase-project/template-website/pull/261) by
  [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([7583723](https://github.com/seedcase-project/template-website/commit/75837233cfb38519d5dab29da1c4e6a0f4cee0c1))

### ♻️ Refactor

- Use `uv` to install things, not `pipx` in CONTRIBUTING
  [#256](https://github.com/seedcase-project/template-website/pull/256) by
  [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([32a15e2](https://github.com/seedcase-project/template-website/commit/32a15e2d0ed31dda2fff949555eb149c9a588466))
- Update pre-commit versions
  [#262](https://github.com/seedcase-project/template-website/pull/262) by
  [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([d0b010a](https://github.com/seedcase-project/template-website/commit/d0b010a267dd1bb807f36d75f14443ebbe793c11))

### 📝 Documentation

- Include section to install code-based tools during install
  [#260](https://github.com/seedcase-project/template-website/pull/260) by
  [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([a87cbff](https://github.com/seedcase-project/template-website/commit/a87cbff20b7b675ca25f454508f3fb5d0331e0ec))

### 💄 Styling

- Update Quarto Seedcase theme
  [#259](https://github.com/seedcase-project/template-website/pull/259) by
  [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([78ed7a4](https://github.com/seedcase-project/template-website/commit/78ed7a4982d3f9e0ff698054189542155e8de4e9))

## [0.30.2](https://github.com/seedcase-project/template-website/compare/0.30.1..0.30.2) - 2026-06-08

### 🐛 Fixes

- Switch to single quotes, GitHub workflows can't use double
  [#247](https://github.com/seedcase-project/template-website/pull/247) by
  [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([17d86de](https://github.com/seedcase-project/template-website/commit/17d86de6d0f2b40e293a1a79edf16424e9ec1df1))
- Don't need references to Jinja in justfile
  [#246](https://github.com/seedcase-project/template-website/pull/246) by
  [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([cad1537](https://github.com/seedcase-project/template-website/commit/cad15376637762c952317530e1fb182bb539fb45))

## [0.30.1](https://github.com/seedcase-project/template-website/compare/0.30.0..0.30.1) - 2026-06-08

### 🐛 Fixes

- Resolve spacing issue with changelog generation
  [#245](https://github.com/seedcase-project/template-website/pull/245) by
  [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([e6074fa](https://github.com/seedcase-project/template-website/commit/e6074facc2fb2a0665e95d84b5ecc63930c4026c))

## [0.30.0](https://github.com/seedcase-project/template-website/compare/0.29.0..0.30.0) - 2026-06-04

### ✨ Features

- Add TODO files to created websites
  [#232](https://github.com/seedcase-project/template-website/pull/232) by
  [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([daf7217](https://github.com/seedcase-project/template-website/commit/daf72171b603a20c6a643b2e5d42a00081543e41))

### 🐛 Fixes

- Small text fixes and edits to Quarto files
  [#242](https://github.com/seedcase-project/template-website/pull/242) by
  [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([ca330ce](https://github.com/seedcase-project/template-website/commit/ca330ce5278bdd1d8d947739be4c0da2a30439bb))

### ♻️ Refactor

- Move description of files into CONTRIBUTING
  [#243](https://github.com/seedcase-project/template-website/pull/243) by
  [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([a1f6039](https://github.com/seedcase-project/template-website/commit/a1f603916585a4bbbebf64ba0554a381dff9122c))

### 📝 Documentation

- Regenerate `README.md` from `README.qmd`
  [#241](https://github.com/seedcase-project/template-website/pull/241) by
  [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([533fbd0](https://github.com/seedcase-project/template-website/commit/533fbd011980548de4cd75c6f804014876ff332c))

### 💄 Styling

- Update Quarto theme extension
  [#240](https://github.com/seedcase-project/template-website/pull/240) by
  [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([941c930](https://github.com/seedcase-project/template-website/commit/941c9305758b017a4e9a01c77e308243853d5032))

### 👩‍💻 Miscellaneous

- Fix CHANGELOG generation spacing, from t-squared
  [#244](https://github.com/seedcase-project/template-website/pull/244) by
  [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([0e2deb6](https://github.com/seedcase-project/template-website/commit/0e2deb684f10699b10b80ac4f3bc366f95f1ac9d))

## [0.29.0](https://github.com/seedcase-project/template-website/compare/0.28.0..0.29.0) - 2026-06-04

### ✨ Features

- Use Panache Markdown formatter
  [#230](https://github.com/seedcase-project/template-website/pull/230) by
  [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([c72d27a](https://github.com/seedcase-project/template-website/commit/c72d27a7aa5bffe6b2b945b1aae867a76b204ad3))
- Add `tagline` to `_metadata.yml`, plus simplify it
  [#239](https://github.com/seedcase-project/template-website/pull/239) by
  [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([553dcd6](https://github.com/seedcase-project/template-website/commit/553dcd65316ef7d635922890b456dfbf51f1c09b))

### ♻️ Refactor

- Rearrange and simplify justfile
  [#235](https://github.com/seedcase-project/template-website/pull/235) by
  [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([295dcdf](https://github.com/seedcase-project/template-website/commit/295dcdfbfdba712e2137db2a1569ef77de9f6159))
- Don't need to build to PDF in workflow (can use Typst)
  [#231](https://github.com/seedcase-project/template-website/pull/231) by
  [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([9e91707](https://github.com/seedcase-project/template-website/commit/9e91707e38b19258a4437a2b6e0ae8a453c2629d))
- Simplify VS Code settings, some not needed
  [#238](https://github.com/seedcase-project/template-website/pull/238) by
  [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([f2ac77d](https://github.com/seedcase-project/template-website/commit/f2ac77de024a6723718c55b446f66a7945153147))

## [0.28.0](https://github.com/seedcase-project/template-website/compare/0.27.0..0.28.0) - 2026-06-04

### ✨ Features

- Add PR checks like if website builds and typos
  [#233](https://github.com/seedcase-project/template-website/pull/233) by
  [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([b85ce85](https://github.com/seedcase-project/template-website/commit/b85ce853c855c5ad8ba3bbf09222937aafa7bbb1))

### 🐛 Fixes

- Ignore `*_cache/` folders from rumdl
  [#234](https://github.com/seedcase-project/template-website/pull/234) by
  [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([e456256](https://github.com/seedcase-project/template-website/commit/e45625632b7f9913a1fc7d5128255e9ad7532877))
- Ensure contributor list is consistent, e.g. sorting and formatting
  [#237](https://github.com/seedcase-project/template-website/pull/237) by
  [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([dfa7424](https://github.com/seedcase-project/template-website/commit/dfa74244d53835890ed42255445293b00e618617))

### ♻️ Refactor

- Move config files into `.config/` folder
  [#228](https://github.com/seedcase-project/template-website/pull/228) by
  [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([9ccc8e7](https://github.com/seedcase-project/template-website/commit/9ccc8e7121ff44580c8b43a89e9ac3a058dc84a3))
- Switch to using Cocogitto and git-cliff for releases
  [#227](https://github.com/seedcase-project/template-website/pull/227) by
  [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([b21bc1e](https://github.com/seedcase-project/template-website/commit/b21bc1e3f393a2b279fcb9e3c6a82b43cee65c04))
- Simplify Copier questions by removing some
  [#226](https://github.com/seedcase-project/template-website/pull/226) by
  [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([7b88d30](https://github.com/seedcase-project/template-website/commit/7b88d30e0bd47d265eb3023c7fcd09999ca23dba))
- No longer use Conventional Commit scopes
  [#229](https://github.com/seedcase-project/template-website/pull/229) by
  [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([e6749d3](https://github.com/seedcase-project/template-website/commit/e6749d388e2abed4ed108d32be15168f906be80c))
- Remove text from CHANGELOG as it is autogenerated
  [#236](https://github.com/seedcase-project/template-website/pull/236) by
  [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([c7ed7e7](https://github.com/seedcase-project/template-website/commit/c7ed7e720c1a923e0466a8871a1224f5f9abdcfb))

### 📝 Documentation

- Correct template title in `CITATION.cff`
  [#214](https://github.com/seedcase-project/template-website/pull/214) by
  [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([4d7ad9a](https://github.com/seedcase-project/template-website/commit/4d7ad9a415ef1ecc32216a854eddba3a566a9693))
- Update docs from t-squared
  [#219](https://github.com/seedcase-project/template-website/pull/219) by
  [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([02f19bc](https://github.com/seedcase-project/template-website/commit/02f19bc8989b255a549c9bbefe5e714a1afd5f0b))
- Update community health files from t-squared
  [#217](https://github.com/seedcase-project/template-website/pull/217) by
  [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([c80fa87](https://github.com/seedcase-project/template-website/commit/c80fa878a9051c7606e1bde2f0fe6d2f646181d8))

### 👷 CI/CD

- Convert to CI/CD from t-squared
  [#218](https://github.com/seedcase-project/template-website/pull/218) by
  [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([a870722](https://github.com/seedcase-project/template-website/commit/a87072295c1fad476ac8ff22876220610d3037f5))

### 👩‍💻 Miscellaneous

- Add or move config files from t-squared
  [#220](https://github.com/seedcase-project/template-website/pull/220) by
  [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([4932a29](https://github.com/seedcase-project/template-website/commit/4932a2906386d5980307af49fef126dd44fa7545))
- Update build files (e.g. justfiles) from t-squared
  [#215](https://github.com/seedcase-project/template-website/pull/215) by
  [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([6f5adec](https://github.com/seedcase-project/template-website/commit/6f5adec2052328b218ccc14629996f7a5c168c85))
- Update DevEx and settings files from t-squared
  [#216](https://github.com/seedcase-project/template-website/pull/216) by
  [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([42746a3](https://github.com/seedcase-project/template-website/commit/42746a3cee47b917c48131ccd551db43e147c06b))

## [0.27.0](https://github.com/seedcase-project/template-website/compare/0.26.0..0.27.0) - 2026-06-04

### 🐛 Fixes

- Windows OS compatible filenames
  [#207](https://github.com/seedcase-project/template-website/pull/207) by
  [`@DanMazJen`](https://github.com/DanMazJen)
  ([ca965cf](https://github.com/seedcase-project/template-website/commit/ca965cf438fb41bf2f8b5638b34538f582bbaee0))

### ❤️ New contributors

- [`@DanMazJen`](https://github.com/DanMazJen) made their first contribution in
  [#207](https://github.com/seedcase-project/template-website/pull/207)

## [0.26.0](https://github.com/seedcase-project/template-website/compare/0.25.0..0.26.0) - 2026-05-18

### ✨ Features

- Update broken link to Seedcase favicon
  [#200](https://github.com/seedcase-project/template-website/pull/200) by
  [`@signekb`](https://github.com/signekb)
  ([eca0308](https://github.com/seedcase-project/template-website/commit/eca0308ed7f8ca0f1ec8d572a9b986390d91c9c0))

## [0.23.2](https://github.com/seedcase-project/template-website/compare/0.23.1..0.23.2) - 2026-04-10

### 🐛 Fixes

- Release workflow needs write permission for release notes
  [#189](https://github.com/seedcase-project/template-website/pull/189) by
  [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([bd80845](https://github.com/seedcase-project/template-website/commit/bd80845fbe93c1afd047afb8a6e1b1e1e33713e3))

## [0.23.1](https://github.com/seedcase-project/template-website/compare/0.23.0..0.23.1) - 2026-04-10

### ♻️ Refactor

- Moved reusable workflow content into template itself
  [#186](https://github.com/seedcase-project/template-website/pull/186) by
  [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([43dbf75](https://github.com/seedcase-project/template-website/commit/43dbf75c8d21ddc9a12716da5b776afd40b506b4))
- Update pre-commit hook versions
  [#187](https://github.com/seedcase-project/template-website/pull/187) by
  [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([79cac96](https://github.com/seedcase-project/template-website/commit/79cac96da91cd3639cfb776e9370615e8b93546c))

### 📝 Documentation

- Updates from `just run-all`
  [#188](https://github.com/seedcase-project/template-website/pull/188) by
  [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([37df7f4](https://github.com/seedcase-project/template-website/commit/37df7f4bea851d5ff2249fd396e0d3812afaeb5c))

## [0.23.0](https://github.com/seedcase-project/template-website/compare/0.22.1..0.23.0) - 2026-03-25

### ✨ Features

- Add preview build step
  [#182](https://github.com/seedcase-project/template-website/pull/182) by
  [`@joelostblom`](https://github.com/joelostblom)
  ([3539471](https://github.com/seedcase-project/template-website/commit/35394715216f1f219b6b301e037c4be44ad1b0a7))

### ❤️ New contributors

- [`@joelostblom`](https://github.com/joelostblom) made their first contribution
  in [#182](https://github.com/seedcase-project/template-website/pull/182)

## [0.22.1](https://github.com/seedcase-project/template-website/compare/0.22.0..0.22.1) - 2026-02-27

### 🐛 Fixes

- Use GitHub Markdown for callout block
  [#175](https://github.com/seedcase-project/template-website/pull/175) by
  [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([2b1f769](https://github.com/seedcase-project/template-website/commit/2b1f7690f016c75e15c89568170e3c1784192af8))

## [0.22.0](https://github.com/seedcase-project/template-website/compare/0.21.1..0.22.0) - 2026-02-27

### ✨ Features

- Include a simple template version
  [#174](https://github.com/seedcase-project/template-website/pull/174) by
  [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([8327d71](https://github.com/seedcase-project/template-website/commit/8327d718f3bff046755b9bab18db365e3b82b47d))

## [0.21.1](https://github.com/seedcase-project/template-website/compare/0.21.0..0.21.1) - 2026-02-26

### 🐛 Fixes

- Use correct URLs after checking them
  [#172](https://github.com/seedcase-project/template-website/pull/172) by
  [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([d1575c2](https://github.com/seedcase-project/template-website/commit/d1575c24c30fe7c52cf3e8bb975f2963f38f31dc))

## [0.21.0](https://github.com/seedcase-project/template-website/compare/0.19.1..0.21.0) - 2026-02-26

### ✨ Features

- Add Lychee URL checker to justfile
  [#163](https://github.com/seedcase-project/template-website/pull/163) by
  [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([6619bbe](https://github.com/seedcase-project/template-website/commit/6619bbe222254393471cff84bc0523fe4f618bbe))
- Add `communities` tag to `.zenodo.json`
  [#166](https://github.com/seedcase-project/template-website/pull/166) by
  [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([14d5106](https://github.com/seedcase-project/template-website/commit/14d5106b6e693174cd94f0d6c34ed132f74cbca3))
- Add Quarto book format as option
  [#171](https://github.com/seedcase-project/template-website/pull/171) by
  [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([0fd50be](https://github.com/seedcase-project/template-website/commit/0fd50be75589df7bcd96563ef8a7e31dcffe3579))

### 🐛 Fixes

- Include `format-md` recipe in non-Seedcase websites
  [#165](https://github.com/seedcase-project/template-website/pull/165) by
  [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([0e59d4e](https://github.com/seedcase-project/template-website/commit/0e59d4ee32f1e39e90fd286daca119b0ea6c3cea))

### ♻️ Refactor

- Contributors listed on newlines
  [#159](https://github.com/seedcase-project/template-website/pull/159) by
  [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([f5652d0](https://github.com/seedcase-project/template-website/commit/f5652d0a34dba8dbce342893dfe117894da5d19c))
- Ignore HTML when running typos
  [#160](https://github.com/seedcase-project/template-website/pull/160) by
  [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([c5b6958](https://github.com/seedcase-project/template-website/commit/c5b6958bb6813d7d1c001f393ac6aa4fe2bcadfe))
- Add note about using require PR command
  [#164](https://github.com/seedcase-project/template-website/pull/164) by
  [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([5b8770e](https://github.com/seedcase-project/template-website/commit/5b8770e0e67799c8d1122fe57cdaeeded70f9b65))
- Don't indent by 4 in Markdown files
  [#169](https://github.com/seedcase-project/template-website/pull/169) by
  [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([16025cd](https://github.com/seedcase-project/template-website/commit/16025cdcf40dda44badcf8833f37f10611cfef21))
- Consistent use of `%-` in Jinja
  [#167](https://github.com/seedcase-project/template-website/pull/167) by
  [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([922a63e](https://github.com/seedcase-project/template-website/commit/922a63ec06cadcee657cc161ff7565c2526ec79b))

### 📝 Documentation

- Add lychee item to landing page "features"
  [#170](https://github.com/seedcase-project/template-website/pull/170) by
  [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([9736edf](https://github.com/seedcase-project/template-website/commit/9736edfce20be6116f94a4610b781ca3be96b17d))

### 💄 Styling

- Update Seedcase theme files
  [#162](https://github.com/seedcase-project/template-website/pull/162) by
  [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([2d38972](https://github.com/seedcase-project/template-website/commit/2d38972b5cf78ca47091a4930c498589f4c17545))

### 👩‍💻 Miscellaneous

- Update pre-commit versions
  [#161](https://github.com/seedcase-project/template-website/pull/161) by
  [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([6547ad5](https://github.com/seedcase-project/template-website/commit/6547ad55c0d5413ecb80a5af3567fb7ffeda478d))

## [0.19.1](https://github.com/seedcase-project/template-website/compare/0.19.0..0.19.1) - 2026-02-19

### 🐛 Fixes

- Remove reflow-mode, default value works better
  [#156](https://github.com/seedcase-project/template-website/pull/156) by
  [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([4a28279](https://github.com/seedcase-project/template-website/commit/4a28279410fc545cfe13b1a85e8d54caedef39bb))

## [0.19.0](https://github.com/seedcase-project/template-website/compare/0.18.0..0.19.0) - 2026-02-16

### ✨ Features

- Add Markdown formatter to justfile
  [#152](https://github.com/seedcase-project/template-website/pull/152) by
  [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([32078d8](https://github.com/seedcase-project/template-website/commit/32078d8762524f53eb4a4a15efca85277b9d90ef))

### 👩‍💻 Miscellaneous

- Upgrade `seedcase-theme`
  [#147](https://github.com/seedcase-project/template-website/pull/147) by
  [`@signekb`](https://github.com/signekb)
  ([7087da2](https://github.com/seedcase-project/template-website/commit/7087da2c7eb1ffd2dcec715056d1e27a86dd51df))
- Upgrade `seedcase-theme`
  [#149](https://github.com/seedcase-project/template-website/pull/149) by
  [`@signekb`](https://github.com/signekb)
  ([1029051](https://github.com/seedcase-project/template-website/commit/1029051fe1f45575e94d435104603d5edd6d5ce9))

## [0.18.0](https://github.com/seedcase-project/template-website/compare/0.17.10..0.18.0) - 2026-01-09

### ✨ Features

- Add favicon to quarto config template
  [#143](https://github.com/seedcase-project/template-website/pull/143) by
  [`@signekb`](https://github.com/signekb)
  ([00baf20](https://github.com/seedcase-project/template-website/commit/00baf205674af44d186b4163e710e6759cd7c208))

## [0.17.10](https://github.com/seedcase-project/template-website/compare/0.17.9..0.17.10) - 2025-11-17

### ♻️ Refactor

- Explain about release process more in CHANGELOG
  [#132](https://github.com/seedcase-project/template-website/pull/132) by
  [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([46c15f3](https://github.com/seedcase-project/template-website/commit/46c15f3efc640fcbb98b1e1cdc771c453a504f85))

## [0.17.9](https://github.com/seedcase-project/template-website/compare/0.17.8..0.17.9) - 2025-11-07

### ♻️ Refactor

- Update pre-commit hook versions
  [#131](https://github.com/seedcase-project/template-website/pull/131) by
  [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([f4e74d1](https://github.com/seedcase-project/template-website/commit/f4e74d1578ea3655f860f3b83e310f5a4ed90c94))

## [0.17.8](https://github.com/seedcase-project/template-website/compare/0.17.7..0.17.8) - 2025-11-07

### ♻️ Refactor

- Ignore `.quarto_ipynb` files in `.gitignore`
  [#130](https://github.com/seedcase-project/template-website/pull/130) by
  [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([4688f24](https://github.com/seedcase-project/template-website/commit/4688f24854420e2c3a65a7e400448b9fabc34692))

### 💄 Styling

- Update `seedcase-theme` extension
  [#128](https://github.com/seedcase-project/template-website/pull/128) by
  [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([a2f71a6](https://github.com/seedcase-project/template-website/commit/a2f71a6b9fdabd0b78c7c778603fcfddc6fdf00f))

## [0.17.7](https://github.com/seedcase-project/template-website/compare/0.17.6..0.17.7) - 2025-11-07

### ♻️ Refactor

- Simplify PR template, use "thorough" and "quick" options
  [#129](https://github.com/seedcase-project/template-website/pull/129) by
  [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([95f12a7](https://github.com/seedcase-project/template-website/commit/95f12a7667397b565dea005e759e8bd912edea08))

## [0.17.6](https://github.com/seedcase-project/template-website/compare/0.17.5..0.17.6) - 2025-11-06

### ♻️ Refactor

- Hide Seedcase-specific post-copy message when not for Seedcase
  [#125](https://github.com/seedcase-project/template-website/pull/125) by
  [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([8be41c6](https://github.com/seedcase-project/template-website/commit/8be41c6d066cda8c903a3aa7640457783f9dcc93))

## [0.17.5](https://github.com/seedcase-project/template-website/compare/0.17.4..0.17.5) - 2025-11-05

### ♻️ Refactor

- Set `seedcase-project` as default GitHub user for Seedcase websites
  [#126](https://github.com/seedcase-project/template-website/pull/126) by
  [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([f5aa101](https://github.com/seedcase-project/template-website/commit/f5aa1010e3e041976174fd2d9e72780fa39a4f15))

## [0.17.4](https://github.com/seedcase-project/template-website/compare/0.17.3..0.17.4) - 2025-09-17

### ♻️ Refactor

- Simplify PR template even more
  [#116](https://github.com/seedcase-project/template-website/pull/116) by
  [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([45915d6](https://github.com/seedcase-project/template-website/commit/45915d694aeb2cfd3b52b9bc849dd01cb4cf69a9))
- Match workflow job name with filename
  [#112](https://github.com/seedcase-project/template-website/pull/112) by
  [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([bbc586d](https://github.com/seedcase-project/template-website/commit/bbc586d16f8f7fac1b9c9d319aaf567dba4e7062))

### 📝 Documentation

- Add contributors to README and landing page
  [#118](https://github.com/seedcase-project/template-website/pull/118) by
  [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([f7120d6](https://github.com/seedcase-project/template-website/commit/f7120d61bf93a6dc7b914933fc484458d6d36dd9))
- Fix wrong single quote character
  [#114](https://github.com/seedcase-project/template-website/pull/114) by
  [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([35a79ab](https://github.com/seedcase-project/template-website/commit/35a79ab719e8ce152e18126fa3e679e4d3a541b8))
- Add Marton's ORCID to CITATION
  [#113](https://github.com/seedcase-project/template-website/pull/113) by
  [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([c9e4d75](https://github.com/seedcase-project/template-website/commit/c9e4d75b7cec6d2d12feb05adbb1f793e8889d44))

### 💄 Styling

- Remove backticks from navbar and citation title
  [#117](https://github.com/seedcase-project/template-website/pull/117) by
  [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([32572ae](https://github.com/seedcase-project/template-website/commit/32572ae243098e13d6a1f95335d3802a5a3d0392))

### 👷 CI/CD

- Use reusable test workflow
  [#103](https://github.com/seedcase-project/template-website/pull/103) by
  [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([beb5c86](https://github.com/seedcase-project/template-website/commit/beb5c86590ff58305d685810c9ad6b22b75fd2d1))

## [0.17.3](https://github.com/seedcase-project/template-website/compare/0.17.2..0.17.3) - 2025-09-11

### ♻️ Refactor

- Simplify PR template description placeholder
  [#105](https://github.com/seedcase-project/template-website/pull/105) by
  [`@signekb`](https://github.com/signekb)
  ([be3f0f0](https://github.com/seedcase-project/template-website/commit/be3f0f0254eea56977df411e0081a1d50aa6ecb4))

### 🧪 Tests

- No need to run `just` in the test templates
  [#102](https://github.com/seedcase-project/template-website/pull/102) by
  [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([6ea19af](https://github.com/seedcase-project/template-website/commit/6ea19afa990c4be914172b4b53077a575c470564))

### ❤️ New contributors

- [`@signekb`](https://github.com/signekb) made their first contribution in
  [#105](https://github.com/seedcase-project/template-website/pull/105)

## [0.17.2](https://github.com/seedcase-project/template-website/compare/0.17.1..0.17.2) - 2025-09-05

### ♻️ Refactor

- Generate `_contributors.yml` into the `includes/` folder
  [#90](https://github.com/seedcase-project/template-website/pull/90) by
  [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([1725d09](https://github.com/seedcase-project/template-website/commit/1725d09154d4d8b03f3e08c2f89988dd40e8b0f0))

### 📝 Documentation

- Official name is `template-website`
  [#101](https://github.com/seedcase-project/template-website/pull/101) by
  [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([3d55104](https://github.com/seedcase-project/template-website/commit/3d5510443e3e64462c4de37438952065118defd2))

## [0.17.1](https://github.com/seedcase-project/template-website/compare/0.17.0..0.17.1) - 2025-09-05

### ♻️ Refactor

- Use `update` theme to match name of recipe
  [#100](https://github.com/seedcase-project/template-website/pull/100) by
  [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([e8cdac1](https://github.com/seedcase-project/template-website/commit/e8cdac169a60401ba9faee908e9adc85ea4b5eba))

## [0.17.0](https://github.com/seedcase-project/template-website/compare/0.16.12..0.17.0) - 2025-09-05

### ✨ Features

- Add CHANGELOG, with explanation of releases
  [#95](https://github.com/seedcase-project/template-website/pull/95) by
  [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([9822fcf](https://github.com/seedcase-project/template-website/commit/9822fcff0dad1d04956d0ac4f69de95de01995f1))

## [0.16.12](https://github.com/seedcase-project/template-website/compare/0.16.11..0.16.12) - 2025-09-05

### ♻️ Refactor

- Ignore other, non-relevant files when listing todos
  [#98](https://github.com/seedcase-project/template-website/pull/98) by
  [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([769fceb](https://github.com/seedcase-project/template-website/commit/769fceb64b0082a969f04bde9088568b496c248a))

## [0.16.11](https://github.com/seedcase-project/template-website/compare/0.16.10..0.16.11) - 2025-09-05

### 🐛 Fixes

- Value should be `isIdenticalTo` in `.zenodo.json`
  [#97](https://github.com/seedcase-project/template-website/pull/97) by
  [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([66d8dc5](https://github.com/seedcase-project/template-website/commit/66d8dc5a92e0894b11fef46a921da8b8cd1d99a3))

### 🧪 Tests

- Manually test the questions using copier
  [#93](https://github.com/seedcase-project/template-website/pull/93) by
  [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([27a87eb](https://github.com/seedcase-project/template-website/commit/27a87eb846b82176bbdaac9cc392cd92e846d269))
- Test on uncommitted changes, not just the last commit
  [#96](https://github.com/seedcase-project/template-website/pull/96) by
  [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([5131163](https://github.com/seedcase-project/template-website/commit/513116311370c0ce5c3abbb954474af7145cdd7a))

## [0.16.10](https://github.com/seedcase-project/template-website/compare/0.16.9..0.16.10) - 2025-09-04

### 🐛 Fixes

- `github_repo` needs to be a question to store properly
  [#92](https://github.com/seedcase-project/template-website/pull/92) by
  [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([a088e5e](https://github.com/seedcase-project/template-website/commit/a088e5e7c5768b4accb098f6524fdc2ea1165931))

## [0.16.9](https://github.com/seedcase-project/template-website/compare/0.16.8..0.16.9) - 2025-09-04

### ♻️ Refactor

- Update pre-commit hook versions
  [#94](https://github.com/seedcase-project/template-website/pull/94) by
  [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([a49e38b](https://github.com/seedcase-project/template-website/commit/a49e38b43f22bed70477ada084908cf726d02c41))

## [0.16.8](https://github.com/seedcase-project/template-website/compare/0.16.7..0.16.8) - 2025-09-04

### ♻️ Refactor

- Simplify justfile recipe Jinja tags
  [#99](https://github.com/seedcase-project/template-website/pull/99) by
  [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([9e4a8a7](https://github.com/seedcase-project/template-website/commit/9e4a8a78842b20591da7014ec077761efb27e48a))

## [0.16.7](https://github.com/seedcase-project/template-website/compare/0.16.6..0.16.7) - 2025-09-04

### ♻️ Refactor

- `update-from-template` workflow didn't work as expected
  [#91](https://github.com/seedcase-project/template-website/pull/91) by
  [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([a2381d0](https://github.com/seedcase-project/template-website/commit/a2381d0ef8e222f95cf988fd3ba0a953c96249d2))

## [0.16.6](https://github.com/seedcase-project/template-website/compare/0.16.5..0.16.6) - 2025-09-01

### ♻️ Refactor

- Don't use `echo: false` by default in Quarto config
  [#80](https://github.com/seedcase-project/template-website/pull/80) by
  [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([f70ab93](https://github.com/seedcase-project/template-website/commit/f70ab93a10666b53c1a812fa707c5551a47837f1))

## [0.16.5](https://github.com/seedcase-project/template-website/compare/0.16.3..0.16.5) - 2025-09-01

### ♻️ Refactor

- These snippets are rarely used, remove to simplify
  [#76](https://github.com/seedcase-project/template-website/pull/76) by
  [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([3b0175a](https://github.com/seedcase-project/template-website/commit/3b0175a4ad535c8e6cc83e1ed095f5e3b9c491c2))
- Update pre-commit hook versions
  [#79](https://github.com/seedcase-project/template-website/pull/79) by
  [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([fcf01b6](https://github.com/seedcase-project/template-website/commit/fcf01b651e54208f8bba30da48c71f985e077e22))

### 👷 CI/CD

- Simpler title for smaller badge text
  [#78](https://github.com/seedcase-project/template-website/pull/78) by
  [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([75fe4a9](https://github.com/seedcase-project/template-website/commit/75fe4a91dfac571f284b419e606891093439b60a))

## [0.16.3](https://github.com/seedcase-project/template-website/compare/0.16.2..0.16.3) - 2025-09-01

### ♻️ Refactor

- Use `svg` for badge for better resolution
  [#82](https://github.com/seedcase-project/template-website/pull/82) by
  [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([415fcfb](https://github.com/seedcase-project/template-website/commit/415fcfb6f82d4c2ac0a5e0e0bf548f64331e98cb))

### 👩‍💻 Miscellaneous

- VS Code settings that improve template dev
  [#77](https://github.com/seedcase-project/template-website/pull/77) by
  [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([6be4092](https://github.com/seedcase-project/template-website/commit/6be409278c69fea10df7d99a3cd56a96e9ecafa7))

## [0.16.2](https://github.com/seedcase-project/template-website/compare/0.16.1..0.16.2) - 2025-09-01

### ♻️ Refactor

- Store `github_repo` into copier answer file
  [#84](https://github.com/seedcase-project/template-website/pull/84) by
  [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([cb82cb0](https://github.com/seedcase-project/template-website/commit/cb82cb08a7372c01874721ff72a12102798d32a7))

## [0.16.1](https://github.com/seedcase-project/template-website/compare/0.16.0..0.16.1) - 2025-09-01

### ♻️ Refactor

- Use bash code chunk style for post-copy message
  [#75](https://github.com/seedcase-project/template-website/pull/75) by
  [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([164cf93](https://github.com/seedcase-project/template-website/commit/164cf934014da048079f1c84ec794a349f5d8a20))

### 📝 Documentation

- Add licensing section on landing page
  [#83](https://github.com/seedcase-project/template-website/pull/83) by
  [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([974a087](https://github.com/seedcase-project/template-website/commit/974a087ef330751e353ddb27cdb9c25ac801af23))

### 👩‍💻 Miscellaneous

- Don't generate the contributors from `_quarto.yml`
  [#81](https://github.com/seedcase-project/template-website/pull/81) by
  [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([b54a741](https://github.com/seedcase-project/template-website/commit/b54a7414868ae034860264319933de11705ff02b))

## [0.16.0](https://github.com/seedcase-project/template-website/compare/0.15.9..0.16.0) - 2025-09-01

### ✨ Features

- Add dependency security review workflow
  [#74](https://github.com/seedcase-project/template-website/pull/74) by
  [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([8fb2913](https://github.com/seedcase-project/template-website/commit/8fb2913c7da4ab24aa8dde47de022830ced457b9))

### 📝 Documentation

- Add entry to first changelog version
  [#65](https://github.com/seedcase-project/template-website/pull/65) by
  [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([b8c978f](https://github.com/seedcase-project/template-website/commit/b8c978ff6d978ab3e3cfe61984a003157d3e8fce))
- Moved the `releases` text into `CHANGELOG`
  [#73](https://github.com/seedcase-project/template-website/pull/73) by
  [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([9a71f73](https://github.com/seedcase-project/template-website/commit/9a71f73bda7e981d34763e079f671431d9ceb710))

### ❤️ New contributors

- `@pre-commit-ci[bot]` started making automated contributions

- `@dependabot[bot]` started making automated contributions

## [0.15.9](https://github.com/seedcase-project/template-website/compare/0.15.7..0.15.9) - 2025-08-08

### ♻️ Refactor

- Rename to `is_seedcase_website`
  [#64](https://github.com/seedcase-project/template-website/pull/64) by
  [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([ced6d49](https://github.com/seedcase-project/template-website/commit/ced6d493e1b713b3809083b9c0619f12b36a69f9))
- Revise so `github_repo` is name of folder
  [#60](https://github.com/seedcase-project/template-website/pull/60) by
  [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([a601ab6](https://github.com/seedcase-project/template-website/commit/a601ab698c57edb64d7b2bba42c7436e94dc5225))

### 📝 Documentation

- Add DOI after upload to Zenodo
  [#62](https://github.com/seedcase-project/template-website/pull/62) by
  [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([cf88d46](https://github.com/seedcase-project/template-website/commit/cf88d46487c611e1da967b3c9dc9c1b598dd4f66))

### 🧪 Tests

- Test script will fail if any step fails
  [#61](https://github.com/seedcase-project/template-website/pull/61) by
  [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([d81f60b](https://github.com/seedcase-project/template-website/commit/d81f60b45685718fbd57e3f8b302014c091b1cdd))

## [0.15.7](https://github.com/seedcase-project/template-website/compare/0.15.6..0.15.7) - 2025-08-07

### 🐛 Fixes

- Need the `metadata-files` in `README.qmd`
  [#59](https://github.com/seedcase-project/template-website/pull/59) by
  [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([b0483b9](https://github.com/seedcase-project/template-website/commit/b0483b98cc36e0ac44749f0b00933f9acabc7a38))

### 📝 Documentation

- Expand on post-copy setup steps
  [#45](https://github.com/seedcase-project/template-website/pull/45) by
  [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([b0695e9](https://github.com/seedcase-project/template-website/commit/b0695e92ee8b05fa7e87671fb9004ad57b5927b9))

## [0.15.6](https://github.com/seedcase-project/template-website/compare/0.15.5..0.15.6) - 2025-08-07

### ♻️ Refactor

- Add link to guide in post-copy message
  [#57](https://github.com/seedcase-project/template-website/pull/57) by
  [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([26cf181](https://github.com/seedcase-project/template-website/commit/26cf181f2138fdf0cdf3b2062397f07e11f4f0d0))

### 🧪 Tests

- Improve robustness of the tests
  [#49](https://github.com/seedcase-project/template-website/pull/49) by
  [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([4d15143](https://github.com/seedcase-project/template-website/commit/4d151433aad402afd64adf85282b7d8dd1da01f0))

### 👩‍💻 Miscellaneous

- Update Seedcase theme
  [#58](https://github.com/seedcase-project/template-website/pull/58) by
  [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([ab0e497](https://github.com/seedcase-project/template-website/commit/ab0e4973c855812884577d6551bce961b8fb2b92))

## [0.15.5](https://github.com/seedcase-project/template-website/compare/0.15.4..0.15.5) - 2025-08-07

### 🐛 Fixes

- Used the wrong echo text for the `check-commits` recipe
  [#53](https://github.com/seedcase-project/template-website/pull/53) by
  [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([87cce86](https://github.com/seedcase-project/template-website/commit/87cce866b16cf06615856f396f6fb5a2fb87253b))

## [0.15.4](https://github.com/seedcase-project/template-website/compare/0.15.3..0.15.4) - 2025-08-07

### 🐛 Fixes

- Forgot to include commas at end of JSON items
  [#54](https://github.com/seedcase-project/template-website/pull/54) by
  [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([50a8f0a](https://github.com/seedcase-project/template-website/commit/50a8f0a945f5be6226efc546599702106e123b86))

## [0.15.3](https://github.com/seedcase-project/template-website/compare/0.15.2..0.15.3) - 2025-08-07

### 🐛 Fixes

- Use `read-all` permissions for workflow at top level
  [#52](https://github.com/seedcase-project/template-website/pull/52) by
  [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([3bbe750](https://github.com/seedcase-project/template-website/commit/3bbe750095ad612c38ac08db22ef5d424d7df37e))

## [0.15.2](https://github.com/seedcase-project/template-website/compare/0.15.1..0.15.2) - 2025-08-07

### ♻️ Refactor

- Use code blocks in post-copy messages, not `$`
  [#55](https://github.com/seedcase-project/template-website/pull/55) by
  [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([13c7c2e](https://github.com/seedcase-project/template-website/commit/13c7c2eff33544a0e4db65383241c7a644245242))

## [0.15.1](https://github.com/seedcase-project/template-website/compare/0.15.0..0.15.1) - 2025-08-07

### 🐛 Fixes

- Remove empty jinja lines
  [#51](https://github.com/seedcase-project/template-website/pull/51) by
  [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([5b4bddc](https://github.com/seedcase-project/template-website/commit/5b4bddc47d9efbbb245503f87a216e756b99f4b5))

## [0.15.0](https://github.com/seedcase-project/template-website/compare/0.14.1..0.15.0) - 2025-08-07

### ✨ Features

- Add GoatCounter includes file
  [#50](https://github.com/seedcase-project/template-website/pull/50) by
  [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([28ef801](https://github.com/seedcase-project/template-website/commit/28ef80188912c9ec2eb6cbc44978db150efb0c05))

## [0.14.1](https://github.com/seedcase-project/template-website/compare/0.14.0..0.14.1) - 2025-08-07

### 🐛 Fixes

- Seedcase logo was wrong path
  [#48](https://github.com/seedcase-project/template-website/pull/48) by
  [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([dba5d58](https://github.com/seedcase-project/template-website/commit/dba5d5848bd98f57394a29bbb5ea306f8c366a7c))

### 📝 Documentation

- Clarify feature on using either Netlify or gh-pages
  [#46](https://github.com/seedcase-project/template-website/pull/46) by
  [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([fbe296a](https://github.com/seedcase-project/template-website/commit/fbe296aab320d4a5bfb73de5f6b5703fd92138ee))

### 💄 Styling

- Use sidebar instead of menu on website
  [#47](https://github.com/seedcase-project/template-website/pull/47) by
  [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([ffbe8bc](https://github.com/seedcase-project/template-website/commit/ffbe8bcefedd9ce7f39ce84a7c116268d8aba469))

## [0.14.0](https://github.com/seedcase-project/template-website/compare/0.13.0..0.14.0) - 2025-08-07

### ✨ Features

- Add CONTRIBUTING guide to template
  [#29](https://github.com/seedcase-project/template-website/pull/29) by
  [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([01f2dad](https://github.com/seedcase-project/template-website/commit/01f2dadc1b00f6a2c580fd26aaa19d1c77b0e688))

## [0.13.0](https://github.com/seedcase-project/template-website/compare/0.12.0..0.13.0) - 2025-08-07

### ✨ Features

- Add Quarto config files to template
  [#22](https://github.com/seedcase-project/template-website/pull/22) by
  [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([d18fafb](https://github.com/seedcase-project/template-website/commit/d18fafb2fc0036c95142c436265ec93a2fadab1c))

## [0.12.0](https://github.com/seedcase-project/template-website/compare/0.11.0..0.12.0) - 2025-08-07

### ✨ Features

- Add Contributor Code of Conduct to template
  [#44](https://github.com/seedcase-project/template-website/pull/44) by
  [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([7b88eef](https://github.com/seedcase-project/template-website/commit/7b88eefea4fdb20b357f76f7d34c024bf0b80ce5))

## [0.11.0](https://github.com/seedcase-project/template-website/compare/0.9.0..0.11.0) - 2025-08-07

### ✨ Features

- Add `add-to-project` workflow, along with copier question
  [#18](https://github.com/seedcase-project/template-website/pull/18) by
  [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([1c73dc7](https://github.com/seedcase-project/template-website/commit/1c73dc779d3fd7807cf745bcc207b2390bd416a8))
- Fill in README of template
  [#34](https://github.com/seedcase-project/template-website/pull/34) by
  [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([776843a](https://github.com/seedcase-project/template-website/commit/776843afea4f6ebe86876ef35e3d954696e2c534))

### 🐛 Fixes

- `get-contributors.sh` should not output with `.tmp` ending
  [#43](https://github.com/seedcase-project/template-website/pull/43) by
  [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([22a1495](https://github.com/seedcase-project/template-website/commit/22a1495d8d06bd01069151a1d9a5bd0d311279a0))

## [0.9.0](https://github.com/seedcase-project/template-website/compare/0.8.0..0.9.0) - 2025-08-06

### ✨ Features

- Add `CODEOWNERS` to template
  [#30](https://github.com/seedcase-project/template-website/pull/30) by
  [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([7881b4f](https://github.com/seedcase-project/template-website/commit/7881b4f40a735b1c3544aed0f91332a98ae5798e))

### 📝 Documentation

- Add guide to using the template
  [#25](https://github.com/seedcase-project/template-website/pull/25) by
  [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([04168fc](https://github.com/seedcase-project/template-website/commit/04168fc1b57dba40c66c22591ae4c58fc9df187c))

### 👷 CI/CD

- Improve speed of CI by removing `zsh` dependency
  [#40](https://github.com/seedcase-project/template-website/pull/40) by
  [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([5f85ae2](https://github.com/seedcase-project/template-website/commit/5f85ae21186801dad916f8acb96717a3894d71ce))

### 👩‍💻 Miscellaneous

- Forgot to remove `.tmp` from includes shortcode
  [#42](https://github.com/seedcase-project/template-website/pull/42) by
  [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([69ea90f](https://github.com/seedcase-project/template-website/commit/69ea90fd9cd443484d4d44a871dc5429fd296a45))

## [0.8.0](https://github.com/seedcase-project/template-website/compare/0.7.1..0.8.0) - 2025-08-06

### ✨ Features

- Add `.zenodo.json` to link metadata to Zenodo
  [#27](https://github.com/seedcase-project/template-website/pull/27) by
  [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([90062f8](https://github.com/seedcase-project/template-website/commit/90062f86da94af30fc99e9ec09f30dc7761f3a96))

## [0.7.1](https://github.com/seedcase-project/template-website/compare/0.7.0..0.7.1) - 2025-08-06

### ♻️ Refactor

- Remove `quarto add` task, so no dependency on it
  [#39](https://github.com/seedcase-project/template-website/pull/39) by
  [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([33f0a28](https://github.com/seedcase-project/template-website/commit/33f0a28a91a7a7b9efc516c90ec7566352d3aa91))

## [0.7.0](https://github.com/seedcase-project/template-website/compare/0.6.0..0.7.0) - 2025-08-06

### ✨ Features

- Add justfile to template
  [#35](https://github.com/seedcase-project/template-website/pull/35) by
  [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([af0e6e1](https://github.com/seedcase-project/template-website/commit/af0e6e129073776ff109db0d38d5171ab2bb8c07))

### 👩‍💻 Miscellaneous

- Upgrade to latest `seedcase-theme` version
  [#31](https://github.com/seedcase-project/template-website/pull/31) by
  [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([e9107ce](https://github.com/seedcase-project/template-website/commit/e9107ce689c932072aba5be17395953b53fb83f6))
- Fixes website build from contributor script
  [#37](https://github.com/seedcase-project/template-website/pull/37) by
  [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([a8fb78f](https://github.com/seedcase-project/template-website/commit/a8fb78fb7f2fe8a62722fb9e106c654fdc1b5555))

## [0.6.0](https://github.com/seedcase-project/template-website/compare/0.4.0..0.6.0) - 2025-08-06

### ✨ Features

- Workflow to check updates from template
  [#28](https://github.com/seedcase-project/template-website/pull/28) by
  [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([963a1ce](https://github.com/seedcase-project/template-website/commit/963a1ce36952fd13dcc97f6e61d3927e89865928))
- Add auto-release workflow to template
  [#26](https://github.com/seedcase-project/template-website/pull/26) by
  [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([0e2c8f5](https://github.com/seedcase-project/template-website/commit/0e2c8f52ffea988024ebde104c89f185e85771ac))
- Add VS Code settings and extension recommend files
  [#24](https://github.com/seedcase-project/template-website/pull/24) by
  [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([896d40b](https://github.com/seedcase-project/template-website/commit/896d40b60e3f760d1b3d89a6227ce525cb97043a))

### 👩‍💻 Miscellaneous

- Update Quarto extension
  [#38](https://github.com/seedcase-project/template-website/pull/38) by
  [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([1d71456](https://github.com/seedcase-project/template-website/commit/1d714561c19517e0e94be5f3cdf2c62c50192572))

## [0.4.0](https://github.com/seedcase-project/template-website/compare/0.3.0..0.4.0) - 2025-08-05

### ✨ Features

- Add the 404 page, either as a Seedcase website or not
  [#19](https://github.com/seedcase-project/template-website/pull/19) by
  [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([6bcbfa1](https://github.com/seedcase-project/template-website/commit/6bcbfa1f2f1fa5166d510e35b4318790f69d1d1b))

### 👷 CI/CD

- Add test workflow
  [#23](https://github.com/seedcase-project/template-website/pull/23) by
  [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([ac50ed3](https://github.com/seedcase-project/template-website/commit/ac50ed30a6b05184a0c023966ed279b251cf80e3))

## [0.3.0](https://github.com/seedcase-project/template-website/compare/0.1.0..0.3.0) - 2025-08-04

### ✨ Features

- Add CC-BY-4.0 LICENSE to template
  [#16](https://github.com/seedcase-project/template-website/pull/16) by
  [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([5dbbd77](https://github.com/seedcase-project/template-website/commit/5dbbd77f7eeebc9dd4f1022a8c6cbd5a61083df5))
- Initial setup of template, with empty README
  [#15](https://github.com/seedcase-project/template-website/pull/15) by
  [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([5a735ef](https://github.com/seedcase-project/template-website/commit/5a735ef014670fbefb3e05d45dde62a9d088cbf1))
- Sync basic development files to template
  [#17](https://github.com/seedcase-project/template-website/pull/17) by
  [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([2099713](https://github.com/seedcase-project/template-website/commit/2099713152c0c82aae6c53beda1ec5a249509def))

### 📝 Documentation

- Add CONTRIBUTING guidelines
  [#11](https://github.com/seedcase-project/template-website/pull/11) by
  [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([bbd08e0](https://github.com/seedcase-project/template-website/commit/bbd08e05e5e412e9ff74dd391c1798a82880bf08))
- Add release page to website
  [#14](https://github.com/seedcase-project/template-website/pull/14) by
  [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([9b75864](https://github.com/seedcase-project/template-website/commit/9b75864dacbcd40df53baf202933f69c966a3c20))
- Add MIT License
  [#10](https://github.com/seedcase-project/template-website/pull/10) by
  [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([0127998](https://github.com/seedcase-project/template-website/commit/012799890fb92a705fdf5d7eb183314d66473924))
- Add `CITATION.cff` file
  [#6](https://github.com/seedcase-project/template-website/pull/6) by
  [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([9353b5f](https://github.com/seedcase-project/template-website/commit/9353b5f99c1ee9195a86015e7c441bb533da8079))
- Add features section
  [#12](https://github.com/seedcase-project/template-website/pull/12) by
  [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([608c680](https://github.com/seedcase-project/template-website/commit/608c680840a6eeebe91e6d2864a8160fffc3eae6))
- Fill in README following style of other repos
  [#9](https://github.com/seedcase-project/template-website/pull/9) by
  [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([69fe279](https://github.com/seedcase-project/template-website/commit/69fe2794d350780eba217cb6c41195e88f047934))

### 👩‍💻 Miscellaneous

- Move extension into correct folder
  [#7](https://github.com/seedcase-project/template-website/pull/7) by
  [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([3acffde](https://github.com/seedcase-project/template-website/commit/3acffdea9096e5d7be61a3ade6e9ba9f87baa0e4))
- Ignore the test files created in the `_temp/`
  [#13](https://github.com/seedcase-project/template-website/pull/13) by
  [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([3bdf27c](https://github.com/seedcase-project/template-website/commit/3bdf27c1e582c820611f9edce0dc8368158e6a2d))

### ❤️ New contributors

- `@github-actions[bot]` started making automated contributions

## [0.1.0] - 2025-08-01

### 👷 CI/CD

- Add auto-release workflow
  [#1](https://github.com/seedcase-project/template-website/pull/1) by
  [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([1c97324](https://github.com/seedcase-project/template-website/commit/1c973246ee460447f49c9aad04a2bb54f820eccf))
- Add to board workflow
  [#2](https://github.com/seedcase-project/template-website/pull/2) by
  [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([86ed79c](https://github.com/seedcase-project/template-website/commit/86ed79ced46dbb1b8c8fe576532106257152bc57))
- Releasing requires `contents: write` permissions
  [#8](https://github.com/seedcase-project/template-website/pull/8) by
  [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([b9da2fc](https://github.com/seedcase-project/template-website/commit/b9da2fce95ac179757308c2d8dc46c89c44cc51e))

### 👩‍💻 Miscellaneous

- Start the template repository! by
  [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([f8a68fb](https://github.com/seedcase-project/template-website/commit/f8a68fb251203e283501cee32c076f8dd0ac80e6))
- Configurations to help with development
  [#3](https://github.com/seedcase-project/template-website/pull/3) by
  [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([18d2592](https://github.com/seedcase-project/template-website/commit/18d2592ae3772b3613ac00336bee04827c7b4103))
- Add all necessary files for building the website
  [#5](https://github.com/seedcase-project/template-website/pull/5) by
  [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([31872d9](https://github.com/seedcase-project/template-website/commit/31872d9f58d56915674c272d159ed37a02ea1fe2))

### ❤️ New contributors

- [`@lwjohnst86`](https://github.com/lwjohnst86) made their first contribution
  in [#8](https://github.com/seedcase-project/template-website/pull/8)
