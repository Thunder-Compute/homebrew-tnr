# typed: false
# frozen_string_literal: true
class Tnr < Formula
  desc "Thunder Compute CLI"
  homepage "https://github.com/Thunder-Compute/thunder-cli"
  version "2.2.0"
  license "MIT"
  depends_on :macos

  if Hardware::CPU.intel?
    url "https://github.com/Thunder-Compute/thunder-cli/releases/download/v2.2.0/tnr_2.2.0_darwin_amd64.tar.gz"
    sha256 "cd5ed1708eb6d2341beb9917be0806c7a84e7d5d4de03451a7749a91f169ff72"

    def install
      bin.install "tnr"
    end
  end
  if Hardware::CPU.arm?
    url "https://github.com/Thunder-Compute/thunder-cli/releases/download/v2.2.0/tnr_2.2.0_darwin_arm64.tar.gz"
    sha256 "d767a1058b2da03f56a1878a3b5f3adb6c101af83d4d87f482d3cd62c9d4d622"

    def install
      bin.install "tnr"
    end
  end

  test do
    system "#{bin}/tnr", "--version"
  end
end
