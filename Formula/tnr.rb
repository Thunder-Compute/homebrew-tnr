# typed: false
# frozen_string_literal: true
class Tnr < Formula
  desc "Thunder Compute CLI"
  homepage "https://github.com/Thunder-Compute/thunder-cli"
  version "2.0.72"
  license "MIT"
  depends_on :macos

  if Hardware::CPU.intel?
    url "https://github.com/Thunder-Compute/thunder-cli/releases/download/v2.0.72/tnr_2.0.72_darwin_amd64.tar.gz"
    sha256 "f0f9f2183c5bf3648102ab97db104e53168d63ef4ac780160b353cab733fe966"

    def install
      bin.install "tnr"
    end
  end
  if Hardware::CPU.arm?
    url "https://github.com/Thunder-Compute/thunder-cli/releases/download/v2.0.72/tnr_2.0.72_darwin_arm64.tar.gz"
    sha256 "d99b53ca14ccafad685ba50c3e3b6ecdaeb536c3f8a67de5c048726a1144bed7"

    def install
      bin.install "tnr"
    end
  end

  test do
    system "#{bin}/tnr", "--version"
  end
end
