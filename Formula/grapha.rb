class Grapha < Formula
  desc "Structural code graph CLI and MCP server for Swift and Rust"
  homepage "https://github.com/oops-rs/grapha"
  url "https://github.com/oops-rs/grapha/archive/refs/tags/v0.1.1.tar.gz"
  sha256 "afcdcfa9cc0419b66902785c3373b260d6b9b6b53b13f3e12c7b00e25d672510"
  license "MIT"
  head "https://github.com/oops-rs/grapha.git", branch: "main"

  depends_on :macos
  depends_on "rust" => :build
  depends_on xcode: :build
  uses_from_macos "swift" => :build

  def install
    ENV["GRAPHA_SWIFT_BRIDGE_MODE"] = "required"
    ENV["GRAPHA_SWIFT_BUILD_DISABLE_SANDBOX"] = "1"

    system "cargo", "build", "-p", "grapha", "--release", "--locked"

    libexec.install "target/release/grapha"
    libexec.install "grapha-swift/swift-bridge/.build/release/libGraphaSwiftBridge.dylib"
    bin.write_env_script libexec/"grapha", GRAPHA_SWIFT_BRIDGE_PATH: libexec
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/grapha --version")
  end
end
