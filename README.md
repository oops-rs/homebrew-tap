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

To install an older pinned binary version after a newer release lands:

```bash
brew install grapha@0.4.0
brew install langcodec-cli@0.11.0
brew install numi@0.2.2
```

## Notes

- `langcodec-cli` installs the `langcodec` binary.
- `grapha` and `face` currently install macOS arm64 GitHub release tarballs.
- `langcodec-cli` and `numi` install prebuilt GitHub release tarballs on macOS arm64, macOS x86_64, and Linux x86_64.
- Versioned formulae are kept only for releases that publish binary assets matching the formula's supported platforms.

## Automatic Updates

The tap can update itself automatically when `grapha`, `face`, `langcodec`, or `numi` publishes a release.

1. Create a fine-grained GitHub token with `Contents: Read and write` access to `oops-rs/homebrew-tap`.
2. Add that token as `HOMEBREW_TAP_TOKEN` in the `grapha`, `face`, `langcodec`, and `numi` repositories.
3. The release workflows in those repos will clone `oops-rs/homebrew-tap`, run `scripts/update-formula.sh`, and push the updated formula back to `main`.

On each new release:

- `Formula/grapha.rb`, `Formula/face.rb`, `Formula/langcodec-cli.rb`, and `Formula/numi.rb` are updated to the latest release.
- Formulae install GitHub release tarballs directly instead of building from source inside Homebrew.
- The previously current formula is preserved as `Formula/grapha@<version>.rb`, `Formula/face@<version>.rb`, `Formula/langcodec-cli@<version>.rb`, or `Formula/numi@<version>.rb` when matching binary release assets exist.
