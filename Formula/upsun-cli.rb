# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class UpsunCli < Formula
  desc "Upsun CLI"
  homepage "https://docs.deployfriday.net/administration/cli.html"
  version "4.10.3"
  license "MIT"

  depends_on "git" => :optional

  on_macos do
    url "https://github.com/platformsh/cli/releases/download/4.10.3/upsun_4.10.3_darwin_all.tar.gz"
    sha256 "33cf58c98390db6da0077aa71683680a050a125ce35930b4292cc14e46925994"

    def install
      bin.install "upsun"
      generate_completions_from_executable(bin/"upsun", "completion", shells: [:bash, :zsh])
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/platformsh/cli/releases/download/4.10.3/upsun_4.10.3_linux_arm64.tar.gz"
      sha256 "42f5e98d61fef9dc0724b1b281315db630a7b726d0336ffd7945dd6d36e84ced"

      def install
        bin.install "upsun"
        generate_completions_from_executable(bin/"upsun", "completion", shells: [:bash, :zsh])
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/platformsh/cli/releases/download/4.10.3/upsun_4.10.3_linux_amd64.tar.gz"
      sha256 "3558658137bfa7cb461d1aac55844fdffd61cbf63b1e22f2f381b97960757ced"

      def install
        bin.install "upsun"
        generate_completions_from_executable(bin/"upsun", "completion", shells: [:bash, :zsh])
      end
    end
  end

  test do
    system "#{bin}/upsun --version"
  end
end
