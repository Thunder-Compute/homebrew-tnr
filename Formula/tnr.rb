# typed: false
# frozen_string_literal: true
class Tnr < Formula
  desc "Thunder Compute CLI"
  homepage "https://github.com/Thunder-Compute/thunder-cli"
  version "2.0.71"
  license "MIT"
  depends_on :macos

  if Hardware::CPU.intel?
    url "https://github.com/Thunder-Compute/thunder-cli/releases/download/v2.0.71/tnr_2.0.71_darwin_amd64.tar.gz"
    sha256 "ae63fef02b0a2cfedab3f612da35c721e154f877a704037b35998f67258ddc25"

    def install
      bin.install "tnr"
    end
  end
  if Hardware::CPU.arm?
    url "https://github.com/Thunder-Compute/thunder-cli/releases/download/v2.0.71/tnr_2.0.71_darwin_arm64.tar.gz"
    sha256 "5a7cf681487fde22d13a3242e5448805959a15cab4f0c25999edd075b622b287"

    def install
      bin.install "tnr"
    end
  end

  test do
    system "#{bin}/tnr", "--version"
  end
end
