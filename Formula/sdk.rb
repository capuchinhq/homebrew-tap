class Sdk < Formula
  desc "Durable AI agents — one binary runs the dev stack and the agent runtime"
  homepage "https://capuchin.dev"
  version "0.2.1"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/capuchinhq/sdk/releases/download/cli-v0.2.1/capuchin_0.2.1_darwin_arm64.tar.gz"
      sha256 ""
    end
    on_intel do
      url "https://github.com/capuchinhq/sdk/releases/download/cli-v0.2.1/capuchin_0.2.1_darwin_amd64.tar.gz"
      sha256 ""
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/capuchinhq/sdk/releases/download/cli-v0.2.1/capuchin_0.2.1_linux_arm64.tar.gz"
      sha256 ""
    end
    on_intel do
      url "https://github.com/capuchinhq/sdk/releases/download/cli-v0.2.1/capuchin_0.2.1_linux_amd64.tar.gz"
      sha256 ""
    end
  end

  def install
    bin.install "capuchin"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/capuchin version")
  end
end
