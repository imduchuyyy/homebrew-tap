class Querypro < Formula
  desc "Terminal UI for Postgres, MongoDB, Redis, RabbitMQ, Kafka and Loki"
  homepage "https://github.com/imduchuyyy/querypro"
  version "0.1.2-beta"

  depends_on "node"

  on_macos do
    on_arm do
      url "https://github.com/imduchuyyy/querypro/releases/download/v0.1.2-beta/querypro-v0.1.2-beta-darwin-arm64.tar.gz"
      sha256 "189b12725acbc1e89d3482e2969ead01589088d6d3ab1715cf44d2032cbbe5c2"
    end
    on_intel do
      url "https://github.com/imduchuyyy/querypro/releases/download/v0.1.2-beta/querypro-v0.1.2-beta-darwin-amd64.tar.gz"
      sha256 "8385d0522df4dc6d8d24ee3c4a86c13647c8b813a65fa08f32bdcaf5c09b21de"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/imduchuyyy/querypro/releases/download/v0.1.2-beta/querypro-v0.1.2-beta-linux-arm64.tar.gz"
      sha256 "86fa6b45af77bab99be4a506f9bff8714d10cda08d1642bdcf5e841f4177c5ed"
    end
    on_intel do
      url "https://github.com/imduchuyyy/querypro/releases/download/v0.1.2-beta/querypro-v0.1.2-beta-linux-amd64.tar.gz"
      sha256 "58b461a965f12ea058a4590d8ce6d71838aef00da794307baea7741bbdafd158"
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
