class Moat < Formula
  desc "Run AI agents in isolated containers with credential injection and full observability"
  homepage "https://majorcontext.com/moat"
  version "0.0.0"

  on_macos do
    on_arm do
      url "https://github.com/majorcontext/moat/releases/download/v#{version}/moat_#{version}_darwin_arm64.tar.gz"
      sha256 "PLACEHOLDER"
    end
    on_intel do
      url "https://github.com/majorcontext/moat/releases/download/v#{version}/moat_#{version}_darwin_amd64.tar.gz"
      sha256 "PLACEHOLDER"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/majorcontext/moat/releases/download/v#{version}/moat_#{version}_linux_arm64.tar.gz"
      sha256 "PLACEHOLDER"
    end
    on_intel do
      url "https://github.com/majorcontext/moat/releases/download/v#{version}/moat_#{version}_linux_amd64.tar.gz"
      sha256 "PLACEHOLDER"
    end
  end

  def install
    bin.install "moat"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/moat version")
  end
end
