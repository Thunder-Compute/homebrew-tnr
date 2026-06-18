# typed: false
# frozen_string_literal: true
class Tnr < Formula
  desc "Thunder Compute CLI"
  homepage "https://github.com/Thunder-Compute/thunder-cli"
  version "2.0.65"
  license "MIT"
  depends_on :macos

  if Hardware::CPU.intel?
    url "https://github.com/Thunder-Compute/thunder-cli/releases/download/v2.0.65/tnr_2.0.65_darwin_amd64.tar.gz"
    sha256 "a8afefc8ebedacdd1cb7097567475de4693c4d165980d7366f576e758933d141"

    def install
      bin.install "tnr"
    end
  end
  if Hardware::CPU.arm?
    url "https://github.com/Thunder-Compute/thunder-cli/releases/download/v2.0.65/tnr_2.0.65_darwin_arm64.tar.gz"
    sha256 "250702468876db621e3d8b3fce0547d04b509053a660ce8844dbb78138d41546"

    def install
      bin.install "tnr"
    end
  end

  test do
    system "#{bin}/tnr", "--version"
  end
end
