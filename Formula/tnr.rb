# typed: false
# frozen_string_literal: true
class Tnr < Formula
  desc "Thunder Compute CLI"
  homepage "https://github.com/Thunder-Compute/thunder-cli"
  version "2.1.0"
  license "MIT"
  depends_on :macos

  if Hardware::CPU.intel?
    url "https://github.com/Thunder-Compute/thunder-cli/releases/download/v2.1.0/tnr_2.1.0_darwin_amd64.tar.gz"
    sha256 "4cf609452e58cf3136ad68ba641832f38bb1b713311b12ea47bc00922843bd29"

    def install
      bin.install "tnr"
    end
  end
  if Hardware::CPU.arm?
    url "https://github.com/Thunder-Compute/thunder-cli/releases/download/v2.1.0/tnr_2.1.0_darwin_arm64.tar.gz"
    sha256 "833c2e88681ce2cfee83feb2b08c892e4e460b9a04b194eede73c5f34ae5e700"

    def install
      bin.install "tnr"
    end
  end

  test do
    system "#{bin}/tnr", "--version"
  end
end
