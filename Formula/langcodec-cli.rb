class LangcodecCli < Formula
  desc "Universal CLI for converting and inspecting localization files"
  homepage "https://github.com/oops-rs/langcodec"
  url "https://github.com/oops-rs/langcodec/archive/refs/tags/v0.11.0.tar.gz"
  sha256 "6c2be636f4ceafc1f15f94cda3e1e9de954faafa9994374be6009deff5ba810d"
  license "MIT"
  head "https://github.com/oops-rs/langcodec.git", branch: "main"

  depends_on "rust" => :build

  def install
    system "cargo", "install", "--locked", *std_cargo_args(path: "langcodec-cli")
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/langcodec --version")
  end
end
