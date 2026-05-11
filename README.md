# homebrew-tap

Homebrew tap for the `oops-rs` CLI tools.

## Install

```bash
brew tap oops-rs/tap
brew install grapha
brew install face
brew install langcodec-cli
brew install numi
```

To install an older pinned version after a newer release lands:

```bash
brew install grapha@0.1.1
brew install face@0.0.1
brew install langcodec-cli@0.11.0
brew install numi@0.1.0
```

## Notes

- `langcodec-cli` installs the `langcodec` binary.
- `face` currently builds from source.
- `numi` installs a prebuilt `numi` GitHub release binary on macOS and Linux.
- `grapha` currently builds from source on macOS so the Swift bridge can be compiled inside the formula.
- `langcodec` release workflows now publish standalone binary assets in addition to archives so future tap updates can switch to binary installs cleanly.

## Automatic Updates

The tap can update itself automatically when `grapha`, `face`, `langcodec`, or `numi` publishes a release.

1. Create a fine-grained GitHub token with `Contents: Read and write` access to `oops-rs/homebrew-tap`.
2. Add that token as `HOMEBREW_TAP_TOKEN` in the `grapha`, `face`, `langcodec`, and `numi` repositories.
3. The release workflows in those repos will clone `oops-rs/homebrew-tap`, run `scripts/update-formula.sh`, and push the updated formula back to `main`.

On each new release:

- `Formula/grapha.rb`, `Formula/face.rb`, `Formula/langcodec-cli.rb`, and `Formula/numi.rb` are updated to the latest release.
- `numi` updates from GitHub release assets on macOS and Linux, while `grapha`, `face`, and `langcodec-cli` still update from source archives.
- The previously current formula is preserved as `Formula/grapha@<version>.rb`, `Formula/face@<version>.rb`, `Formula/langcodec-cli@<version>.rb`, or `Formula/numi@<version>.rb`.
