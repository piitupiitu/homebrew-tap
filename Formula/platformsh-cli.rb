# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class PlatformshCli < Formula
  desc "Platform.sh CLI"
  homepage "https://docs.platform.sh/administration/cli.html"
  version "4.0.0-beta.6"
  license "MIT"

  depends_on "git" => :optional
  depends_on "oniguruma"
  depends_on "openssl@1.1"

  on_macos do
    url "https://github.com/platformsh/homebrew-tap/releases/download/4.0.0-beta.6/platform_4.0.0-beta.6_darwin_all.tar.gz"
    sha256 "88f73e787e2d6055355bebe1a649cfe1b56684c346287da8686a17643ee442cf"

    def install
      bin.install "platform"
      bash_completion.install "completion/bash/platform.bash" => "platform"
      zsh_completion.install "completion/zsh/_platform" => "_platform"
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/platformsh/homebrew-tap/releases/download/4.0.0-beta.6/platform_4.0.0-beta.6_linux_arm64.tar.gz"
      sha256 "25c2ca5a808377bcf40fad4a2c358a93929ffc938f8e5e61b838ecea0e0e6dbf"

      def install
        bin.install "platform"
        bash_completion.install "completion/bash/platform.bash" => "platform"
        zsh_completion.install "completion/zsh/_platform" => "_platform"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/platformsh/homebrew-tap/releases/download/4.0.0-beta.6/platform_4.0.0-beta.6_linux_amd64.tar.gz"
      sha256 "e77c2df03ce434dc2a12f976ccf16033cdfe288df9a278689e7b53e87e297411"

      def install
        bin.install "platform"
        bash_completion.install "completion/bash/platform.bash" => "platform"
        zsh_completion.install "completion/zsh/_platform" => "_platform"
      end
    end
  end

  def caveats
    <<~EOS
      In order to enable completions, you need to follow one of the following steps:

        * Install using Homebrew and include bash-completion or zsh-completion package, depending on your shell of choice
        * Run the following command to enable completion for bash
          echo 'eval $(platform completion bash)' >> ~/.bashrc
        * Run the following command to enable completion for zsh
          echo 'eval $(platform completion zsh)' >> ~/.zshrc
    EOS
  end

  test do
    system "#{bin}/platform --version"
  end
end
