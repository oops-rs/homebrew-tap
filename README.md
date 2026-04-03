# homebrew-tap

Homebrew tap for the `oops-rs` CLI tools.

## Install

```bash
brew tap oops-rs/tap
brew install grapha
brew install langcodec-cli
```

## Notes

- `langcodec-cli` installs the `langcodec` binary.
- `grapha` currently builds from source on macOS so the Swift bridge can be compiled inside the formula.
- `langcodec` release workflows now publish standalone binary assets in addition to archives so future tap updates can switch to binary installs cleanly.
