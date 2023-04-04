# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class PlatformshCli < Formula
  desc "Platform.sh CLI"
  homepage "https://docs.platform.sh/administration/cli.html"
  version "4.4.1"
  license "MIT"

  depends_on "git" => :optional
  depends_on "oniguruma"
  depends_on "openssl@1.1"

  on_macos do
    url "https://github.com/platformsh/cli/releases/download/4.4.1/platform_4.4.1_darwin_all.tar.gz"
    sha256 "1eb68f32b58b3ff86f8c1628b0a6b13f6c586f9a58606bb78e7a0e6473ad6bfe"

    def install
      bin.install "platform"
      generate_completions_from_executable(bin/"platform", "completion", shells: [:bash, :zsh])
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/platformsh/cli/releases/download/4.4.1/platform_4.4.1_linux_arm64.tar.gz"
      sha256 "12c14cd8a1a12e32c3621d1bf2bea2f202091f4bd7ac44ba47370bbd483f93dd"

      def install
        bin.install "platform"
        generate_completions_from_executable(bin/"platform", "completion", shells: [:bash, :zsh])
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/platformsh/cli/releases/download/4.4.1/platform_4.4.1_linux_amd64.tar.gz"
      sha256 "0e6f7d6fec55b5750a53000627b864861914f58ae17422f24144894976eaaea3"

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
