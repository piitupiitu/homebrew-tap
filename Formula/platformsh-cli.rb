# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class PlatformshCli < Formula
  desc "Platform.sh CLI"
  homepage "https://docs.platform.sh/administration/cli.html"
  version "4.0.0+001"
  license "MIT"

  depends_on "git" => :optional
  depends_on "oniguruma"
  depends_on "openssl@1.1"

  on_macos do
    url "https://github.com/platformsh/cli/releases/download/4.0.0+001/platform_4.0.0+001_darwin_all.tar.gz"
    sha256 "d3e2c0976182e14e3b2bc4acc55ccbf99a695cef1cb7cb75ab76e7fd6f546ef9"

    def install
      bin.install "platform"
      generate_completions_from_executable(bin/"platform", "completion", shells: [:bash, :zsh])
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/platformsh/cli/releases/download/4.0.0+001/platform_4.0.0+001_linux_arm64.tar.gz"
      sha256 "ef47128b71ff3fa62a88989c57a840cdd7b49bc36af0b1afb5926ec646463265"

      def install
        bin.install "platform"
        generate_completions_from_executable(bin/"platform", "completion", shells: [:bash, :zsh])
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/platformsh/cli/releases/download/4.0.0+001/platform_4.0.0+001_linux_amd64.tar.gz"
      sha256 "1540730d44619bf46236e2d99ae583f9f174a94a49adcfa31a7601bc4772363d"

      def install
        bin.install "platform"
        generate_completions_from_executable(bin/"platform", "completion", shells: [:bash, :zsh])
      end
    end
  end

  test do
    system "#{bin}/platform --version"
  end
end
