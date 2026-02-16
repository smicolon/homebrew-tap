class AiKit < Formula
  desc "AI coding tool pack manager for Smicolon standards"
  homepage "https://github.com/smicolon/ai-kit"
  version "0.4.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/smicolon/ai-kit/releases/download/v0.4.0/ai-kit-darwin-arm64.gz"
      sha256 "81650b37d62f654d6e8736cf7e8aede47187993283f24cceb9641352e73065e0"
    end
    on_intel do
      url "https://github.com/smicolon/ai-kit/releases/download/v0.4.0/ai-kit-darwin-x64.gz"
      sha256 "870e9e8444b3db91066a9103e09beec9530cce0d6703e04adfc5d14b4335080f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/smicolon/ai-kit/releases/download/v0.4.0/ai-kit-linux-arm64.gz"
      sha256 "f057719091475ded00c8f9a8d50e71866f629714a3d9d5b0fb5225303559b785"
    end
    on_intel do
      url "https://github.com/smicolon/ai-kit/releases/download/v0.4.0/ai-kit-linux-x64.gz"
      sha256 "e15e9ff9c27ab0a93f86ace89d3323abf15a19d7abf79f4a6710a88066806f48"
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
