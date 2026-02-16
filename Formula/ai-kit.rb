class AiKit < Formula
  desc "AI coding tool pack manager for Smicolon standards"
  homepage "https://github.com/smicolon/ai-kit"
  version "0.3.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/smicolon/ai-kit/releases/download/v0.3.2/ai-kit-darwin-arm64.gz"
      sha256 "369336d680f7671e36767bf9c77f488c7d67fb4d2f40be327103a7536109ae18"
    end
    on_intel do
      url "https://github.com/smicolon/ai-kit/releases/download/v0.3.2/ai-kit-darwin-x64.gz"
      sha256 "7dc2416b760f45946bb63b1f2e66ac4e1d248f2a199f0c0670c6e878ec5fd949"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/smicolon/ai-kit/releases/download/v0.3.2/ai-kit-linux-arm64.gz"
      sha256 "a6340554ea4de7eaafbc942c92a6924f168a13a809459e25abca30ab3831bfed"
    end
    on_intel do
      url "https://github.com/smicolon/ai-kit/releases/download/v0.3.2/ai-kit-linux-x64.gz"
      sha256 "51327c07bfab38fcbe64fbae85366ee902ada31d26308aebdbad1f89edc9a38b"
    end
  end

  def install
    bin.install "ai-kit"
  end

  test do
    assert_match "AI coding tool pack manager", shell_output("#{bin}/ai-kit --help")
  end
end
