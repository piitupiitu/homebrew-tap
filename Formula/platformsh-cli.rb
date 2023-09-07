# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class PlatformshCli < Formula
  desc "Platform.sh CLI"
  homepage "https://docs.platform.sh/administration/cli.html"
  version "4.9.0"
  license "MIT"

  depends_on "git" => :optional

  on_macos do
    url "https://github.com/platformsh/cli/releases/download/4.9.0/platform_4.9.0_darwin_all.tar.gz"
    sha256 "d8f347550b41dfebb221cd5fb53932a7270b9faaf65fe33eb1fb7095befc45f0"

    def install
      bin.install "platform"
      generate_completions_from_executable(bin/"platform", "completion", shells: [:bash, :zsh])
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/platformsh/cli/releases/download/4.9.0/platform_4.9.0_linux_arm64.tar.gz"
      sha256 "10210e3f0f1fdca5d1489fa9655294be1d5689910b664cadabed1afc4de639a0"

      def install
        bin.install "platform"
        generate_completions_from_executable(bin/"platform", "completion", shells: [:bash, :zsh])
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/platformsh/cli/releases/download/4.9.0/platform_4.9.0_linux_amd64.tar.gz"
      sha256 "232948d772d10ac58312a9934896c878045f3b7011f77a0cbb4297767f33a4c8"

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
