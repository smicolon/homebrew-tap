class AiKit < Formula
  desc "AI coding tool pack manager for Smicolon standards"
  homepage "https://github.com/smicolon/ai-kit"
  version "0.4.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/smicolon/ai-kit/releases/download/v0.4.1/ai-kit-darwin-arm64.gz"
      sha256 "90fc0f9d017d4bfc2777cc7a3a9a39da34c38686b277b9dc76654d0cd3e4381c"
    end
    on_intel do
      url "https://github.com/smicolon/ai-kit/releases/download/v0.4.1/ai-kit-darwin-x64.gz"
      sha256 "b9aa503968556a5a6539ae4f8e98d1cce9f10e034f2f604074a689cc9d7aa639"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/smicolon/ai-kit/releases/download/v0.4.1/ai-kit-linux-arm64.gz"
      sha256 "4a6fb681d49a4b12fe694573910e0adf484d4f15d65a94bbebcfe25526940e97"
    end
    on_intel do
      url "https://github.com/smicolon/ai-kit/releases/download/v0.4.1/ai-kit-linux-x64.gz"
      sha256 "53e33fa42a9952b9e1449d18314f8b493029667a837e259e5bcc0c6a71dad532"
    end
  end

  def install
    binary = Dir["ai-kit-*"].first
    bin.install binary => "ai-kit"
  end

  test do
    assert_match "AI coding tool pack manager", shell_output("#{bin}/ai-kit --help")
  end
end
