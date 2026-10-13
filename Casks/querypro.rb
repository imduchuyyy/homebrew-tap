cask "querypro" do
  version "0.1.4-beta"
  name "querypro"
  desc "Terminal UI for Postgres, MongoDB, Redis, RabbitMQ, Kafka and Loki"
  homepage "https://github.com/imduchuyyy/querypro"

  depends_on formula: "node"

  on_macos do
    on_arm do
      url "https://github.com/imduchuyyy/querypro/releases/download/v0.1.4-beta/querypro-v0.1.4-beta-darwin-arm64.tar.gz"
      sha256 "3c5f47bcda4aaf34da2c592581f2faa1b3832fdf54d4d235e4a8829ace69915e"
      binary "querypro-v0.1.4-beta-darwin-arm64/querypro"
    end
    on_intel do
      url "https://github.com/imduchuyyy/querypro/releases/download/v0.1.4-beta/querypro-v0.1.4-beta-darwin-amd64.tar.gz"
      sha256 "8012529bd73e9f28fd24ce0fd756349b62a77b1d87de998645ec8a92d0efbcfe"
      binary "querypro-v0.1.4-beta-darwin-amd64/querypro"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/imduchuyyy/querypro/releases/download/v0.1.4-beta/querypro-v0.1.4-beta-linux-arm64.tar.gz"
      sha256 "d98d785914a5c0c57a6363448d92d511a07a715ce0b98b9b6ae8550c2a767ad6"
      binary "querypro-v0.1.4-beta-linux-arm64/querypro"
    end
    on_intel do
      url "https://github.com/imduchuyyy/querypro/releases/download/v0.1.4-beta/querypro-v0.1.4-beta-linux-amd64.tar.gz"
      sha256 "976128cb98207d7eee11a77be2a1cec9dbc1222cc46b993c783f6fb7869ff87d"
      binary "querypro-v0.1.4-beta-linux-amd64/querypro"
    end
  end

  postflight do
    if OS.mac?
      system_command "/usr/bin/xattr",
                     args: ["-dr", "com.apple.quarantine", staged_path]
    end
  end
end
