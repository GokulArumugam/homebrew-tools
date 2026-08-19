class ProxySetup < Formula
  desc "Build llm-proxy-home and llm-proxy-warp containers for proxy-switch"
  homepage "https://github.com/GokulArumugam/homebrew-tools"
  url "https://raw.githubusercontent.com/GokulArumugam/homebrew-tools/main/scripts/proxy-setup"
  sha256 "0000000000000000000000000000000000000000000000000000000000000000"
  version "1.0.0"
  head "https://github.com/GokulArumugam/homebrew-tools.git", branch: "main"

  depends_on "podman"

  def install
    bin.install "proxy-setup"
  end

  def caveats
    <<~EOS
      proxy-setup builds two Podman containers:
        - llm-proxy-home  (Alpine + Caddy + microsocks, for home WiFi)
        - llm-proxy-warp  (Cloudflare WARP + Caddy + microsocks, for office WiFi)

      Run: proxy-setup

      Then use proxy-switch to toggle modes:
        proxy-switch home | office | status | off
    EOS
  end
end
