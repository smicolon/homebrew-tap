class AiKit < Formula
  desc "AI coding tool pack manager for Smicolon standards"
  homepage "https://github.com/smicolon/ai-kit"
  version "0.4.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/smicolon/ai-kit/releases/download/v0.4.2/ai-kit-darwin-arm64.gz"
      sha256 "0908a33fa5f7660876788b4276d07df910935ae80155a3d028a357fa9a082513"
    end
    on_intel do
      url "https://github.com/smicolon/ai-kit/releases/download/v0.4.2/ai-kit-darwin-x64.gz"
      sha256 "1955148d23a638011df80e7875c7c8d41c086c7ed626aef446f2ab0e1f00e1e3"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/smicolon/ai-kit/releases/download/v0.4.2/ai-kit-linux-arm64.gz"
      sha256 "94014e5e35dfd9188fb384574b8e5031ac3a79063242539a9fa1c5f240df08ab"
    end
    on_intel do
      url "https://github.com/smicolon/ai-kit/releases/download/v0.4.2/ai-kit-linux-x64.gz"
      sha256 "978f1798b18cf0458b7066a994cab68017491499487c24c9e9a16e93d3473a16"
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
