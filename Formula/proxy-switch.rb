class ProxySwitch < Formula
  desc "Switch between home/office SOCKS proxy modes for Podman containers"
  homepage "https://github.com/GokulArumugam/homebrew-tools"
  url "https://raw.githubusercontent.com/GokulArumugam/homebrew-tools/main/scripts/proxy-switch"
  sha256 "cbf7de12b6f63da79d32284de5633529ac15fb7a1c48a69eecb769d1b85caef0"
  version "1.0.0"
  head "https://github.com/GokulArumugam/homebrew-tools.git", branch: "main"

  def install
    bin.install "proxy-switch"
  end

  def caveats
    <<~EOS
      proxy-switch requires:
        - Podman (brew install podman)
        - Two containers: llm-proxy-home and llm-proxy-warp
        - macOS (uses networksetup for SOCKS proxy)

      Usage:
        proxy-switch home     # Fast direct mode
        proxy-switch office   # WARP mode (bypasses Netskope)
        proxy-switch status   # Show current mode
        proxy-switch off      # Stop all proxies
    EOS
  end
end
