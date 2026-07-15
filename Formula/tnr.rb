# typed: false
# frozen_string_literal: true
class Tnr < Formula
  desc "Thunder Compute CLI"
  homepage "https://github.com/Thunder-Compute/thunder-cli"
  version "2.0.70"
  license "MIT"
  depends_on :macos

  if Hardware::CPU.intel?
    url "https://github.com/Thunder-Compute/thunder-cli/releases/download/v2.0.70/tnr_2.0.70_darwin_amd64.tar.gz"
    sha256 "b031aca5484a75974f6a74523b8021cc2846b905c4cd2a029133a02c32e620ce"

    def install
      bin.install "tnr"
    end
  end
  if Hardware::CPU.arm?
    url "https://github.com/Thunder-Compute/thunder-cli/releases/download/v2.0.70/tnr_2.0.70_darwin_arm64.tar.gz"
    sha256 "e4896e16c852b30fe4bec010710bf9fc92ca9e313b718d6ec04d279fffd689df"

    def install
      bin.install "tnr"
    end
  end

  test do
    system "#{bin}/tnr", "--version"
  end
end
