# LynxDB Homebrew Tap

[![Release](https://img.shields.io/github/v/release/lynxbase/lynxdb?display_name=tag&color=2f855a)](https://github.com/lynxbase/lynxdb/releases)
[![Tap CI](https://img.shields.io/github/actions/workflow/status/lynxbase/homebrew-tap/tests.yml?branch=main&label=tap%20ci)](https://github.com/lynxbase/homebrew-tap/actions/workflows/tests.yml)
[![License](https://img.shields.io/badge/license-Apache%202.0-blue)](LICENSE)

Homebrew tap for [LynxDB](https://github.com/lynxbase/lynxdb), an open-source log analytics database distributed as a single binary.

## Install

Recommended:

```bash
brew install lynxbase/tap/lynxdb
```

Or tap first and install afterwards:

```bash
brew tap lynxbase/tap
brew install lynxdb
```

## Verify

```bash
lynxdb version
```

## Upgrade

```bash
brew update
brew upgrade lynxdb
```

## What lives here

- `lynxdb.rb` is the Homebrew formula for LynxDB.
- Formula releases are generated from the main project release pipeline.
- Product docs live at [docs.lynxdb.org](https://docs.lynxdb.org/).

## Links

- Source: <https://github.com/lynxbase/lynxdb>
- Releases: <https://github.com/lynxbase/lynxdb/releases>
- Documentation: <https://docs.lynxdb.org/>
