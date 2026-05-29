class Meokclaw < Formula
  desc "Sovereign AI TUI — Bubble Tea + 33-node BFT council in your terminal"
  homepage "https://github.com/CSOAI-ORG/homebrew-meokclaw"
  version "1.0.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/CSOAI-ORG/homebrew-meokclaw/releases/download/v1.0.0/meokclaw-1.0.0-darwin-arm64.tar.gz"
      sha256 "de2305c96ab5b3e290685e1ec1b986a7cff1de1de2f61a12687e13858ceb9d3b"
    end
    on_intel do
      url "https://github.com/CSOAI-ORG/homebrew-meokclaw/releases/download/v1.0.0/meokclaw-1.0.0-darwin-amd64.tar.gz"
      sha256 "69d8e7b5fb75a83ba6c80f96d98c78b2728eeecdcc5926cbab5c7d7015efc298"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/CSOAI-ORG/homebrew-meokclaw/releases/download/v1.0.0/meokclaw-1.0.0-linux-amd64.tar.gz"
      sha256 "8a5789930b12ec2bd4f93a08e6b562153f2cac943311712c2e38b8b8bbfbc1b7"
    end
  end

  def install
    bin.install "meokclaw"
  end

  test do
    assert_match "1.0.0", shell_output("#{bin}/meokclaw --version")
  end

  def caveats
    <<~EOS
      meokclaw Free tier works out of the box — just run:
        meokclaw

      Unlock Pro (cloud companion sync, voice council, multi-machine sync) at:
        https://meok.ai/sovereign-pro

      Then provide your key one of two ways:
        export MEOKCLAW_API_KEY=mk_...
      …or save it to ~/.config/meokclaw/auth as:
        {"api_key": "mk_..."}
    EOS
  end
end
