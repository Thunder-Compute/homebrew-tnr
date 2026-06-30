# typed: false
# frozen_string_literal: true
class Tnr < Formula
  desc "Thunder Compute CLI"
  homepage "https://github.com/Thunder-Compute/thunder-cli"
  version "2.0.69"
  license "MIT"
  depends_on :macos

  if Hardware::CPU.intel?
    url "https://github.com/Thunder-Compute/thunder-cli/releases/download/v2.0.69/tnr_2.0.69_darwin_amd64.tar.gz"
    sha256 "b06ce65f5f13372e301dcf2cf4a15a030cdbfdb66a93c6060335a759d1a54476"

    def install
      bin.install "tnr"
    end
  end
  if Hardware::CPU.arm?
    url "https://github.com/Thunder-Compute/thunder-cli/releases/download/v2.0.69/tnr_2.0.69_darwin_arm64.tar.gz"
    sha256 "aadbe59e64dcb9145ab5419cbb303af2f8c86e9326d89282d30b9ec28d439043"

    def install
      bin.install "tnr"
    end
  end

  test do
    system "#{bin}/tnr", "--version"
  end
end
