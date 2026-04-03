# homebrew-tap

Homebrew tap for the `oops-rs` CLI tools.

## Install

```bash
brew tap oops-rs/tap
brew install grapha
brew install langcodec-cli
```

To install an older pinned version after a newer release lands:

```bash
brew install grapha@0.1.1
brew install langcodec-cli@0.11.0
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

On each new release:

- `Formula/grapha.rb` and `Formula/langcodec-cli.rb` are updated to the latest release.
- The previously current formula is preserved as `Formula/grapha@<version>.rb` or `Formula/langcodec-cli@<version>.rb`.
