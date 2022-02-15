class Proxee < Formula
  desc "Simple local reverse proxy server"
  homepage "https://github.com/andrewhao/proxee"
  version "0.1.0"

  on_macos do
    url "https://github.com/andrewhao/proxee/releases/download/v#{version}/proxee_v#{version}_x86_64-apple-darwin.zip"
    sha256 "49f69fe625b0338e7780ef6dc666e0d91bf37f5f4f7d2426a283870522a20bcb"
  end

  on_linux do
    url "https://github.com/andrewhao/proxee/releases/download/v#{version}/proxee_v#{version}_x86_64-unknown-linux-musl.zip"
    sha256 "6eeaec8cace1ded7d545af9eeaead097904a8d2ff9f801a44698ccc32623bac2"
  end

  def install
    bin.install "proxee"
  end

  test do
    assert_match "proxee #{version.to_s}/", `proxee --version`.chomp
  end
end
