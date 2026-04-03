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

## Automatic Updates

The tap can update itself automatically when `grapha` or `langcodec` publishes a release.

1. Create a fine-grained GitHub token with `Contents: Read and write` access to `oops-rs/homebrew-tap`.
2. Add that token as `HOMEBREW_TAP_TOKEN` in the `grapha` and `langcodec` repositories.
3. The release workflows in those repos will clone `oops-rs/homebrew-tap`, run `scripts/update-formula.sh`, and push the updated formula back to `main`.
