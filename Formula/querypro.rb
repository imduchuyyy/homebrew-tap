class Querypro < Formula
  desc "Terminal UI for Postgres, MongoDB, Redis, RabbitMQ, Kafka and Loki"
  homepage "https://github.com/imduchuyyy/querypro"
  version "0.1.3-beta"

  depends_on "node"

  on_macos do
    on_arm do
      url "https://github.com/imduchuyyy/querypro/releases/download/v0.1.3-beta/querypro-v0.1.3-beta-darwin-arm64.tar.gz"
      sha256 "3b0d6c570ebd54383abc174f1dfcb2a3c47274a7a1f58cfb7f89d5d5217becc1"
    end
    on_intel do
      url "https://github.com/imduchuyyy/querypro/releases/download/v0.1.3-beta/querypro-v0.1.3-beta-darwin-amd64.tar.gz"
      sha256 "5f1b663ea50094a3c9f235d9d721194a949c64c10bef3cf778c03a2e37aebbdc"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/imduchuyyy/querypro/releases/download/v0.1.3-beta/querypro-v0.1.3-beta-linux-arm64.tar.gz"
      sha256 "87a817fe48a6bcc0cebed6e8d8b4894a31584d279997d1fbd7ccc1ae89f67d99"
    end
    on_intel do
      url "https://github.com/imduchuyyy/querypro/releases/download/v0.1.3-beta/querypro-v0.1.3-beta-linux-amd64.tar.gz"
      sha256 "67f9109300ddf44df46648bbbd5443607fbde230a1a2b646806586ce4d2a5e37"
    end
  end

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"querypro"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/querypro --version")
  end
end
