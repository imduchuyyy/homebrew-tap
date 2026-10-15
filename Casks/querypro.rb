cask "querypro" do
  version "0.1.5-beta"
  name "querypro"
  desc "Terminal UI for Postgres, MongoDB, Redis, RabbitMQ, Kafka and Loki"
  homepage "https://github.com/imduchuyyy/querypro"

  depends_on formula: "node"

  on_macos do
    on_arm do
      url "https://github.com/imduchuyyy/querypro/releases/download/v0.1.5-beta/querypro-v0.1.5-beta-darwin-arm64.tar.gz"
      sha256 "b738fa9ad3ec1d4094daae13fe9e4fdfbebc5aa8eea7af1e0a5fef7dcfea011c"
      binary "querypro-v0.1.5-beta-darwin-arm64/querypro"
    end
    on_intel do
      url "https://github.com/imduchuyyy/querypro/releases/download/v0.1.5-beta/querypro-v0.1.5-beta-darwin-amd64.tar.gz"
      sha256 "84c96f013baf2751c0aa6d6e234f90c292b7437991b85a2324cd623d152e3aae"
      binary "querypro-v0.1.5-beta-darwin-amd64/querypro"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/imduchuyyy/querypro/releases/download/v0.1.5-beta/querypro-v0.1.5-beta-linux-arm64.tar.gz"
      sha256 "86b88cf6375eca3f932fb79f4e96e0c933a31e112ddbc46b27ba7ee1e796336d"
      binary "querypro-v0.1.5-beta-linux-arm64/querypro"
    end
    on_intel do
      url "https://github.com/imduchuyyy/querypro/releases/download/v0.1.5-beta/querypro-v0.1.5-beta-linux-amd64.tar.gz"
      sha256 "a3b8401169100765cc808d32e0316d2cb6eec5fb136c03b3e746a620dc95be51"
      binary "querypro-v0.1.5-beta-linux-amd64/querypro"
    end
  end

  postflight do
    if OS.mac?
      system_command "/usr/bin/xattr",
                     args: ["-dr", "com.apple.quarantine", staged_path]
    end
  end
end
