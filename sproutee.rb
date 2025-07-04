# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Sproutee < Formula
  desc "A powerful CLI tool for efficient Git worktree management with automated file copying and multi-editor integration"
  homepage "https://github.com/daisuke310vvv/sproutee"
  version "0.4.1"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/daisuke310vvv/sproutee/releases/download/v0.4.1/sproutee_Darwin_x86_64.tar.gz"
      sha256 "317ac3a27c6885315f399f889b8f1e9975d38d5fefa0d475a430c499e316ebf9"

      def install
        bin.install "sproutee"
      end
    end
    on_arm do
      url "https://github.com/daisuke310vvv/sproutee/releases/download/v0.4.1/sproutee_Darwin_arm64.tar.gz"
      sha256 "bb35de9a375198afaddabc10426e3781390bb8bf4332156a817f8d51e5558cfe"

      def install
        bin.install "sproutee"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/daisuke310vvv/sproutee/releases/download/v0.4.1/sproutee_Linux_x86_64.tar.gz"
        sha256 "42fbf51ccfd1dceb4bb1e97a3a45bd869b38db622b417d26e03a245417925859"

        def install
          bin.install "sproutee"
        end
      end
    end
    on_arm do
      if !Hardware::CPU.is_64_bit?
        url "https://github.com/daisuke310vvv/sproutee/releases/download/v0.4.1/sproutee_Linux_armv6.tar.gz"
        sha256 "a7e7bbef05608003b70d6b9fe315dcb80f3ecfbe53cd83db07cc472be3aa6754"

        def install
          bin.install "sproutee"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/daisuke310vvv/sproutee/releases/download/v0.4.1/sproutee_Linux_arm64.tar.gz"
        sha256 "ac71fbc2a72106ecd276ad0897f7ea8c9bc5d689bd527c077f7e449962a1b024"

        def install
          bin.install "sproutee"
        end
      end
    end
  end

  test do
    system "#{bin}/sproutee", "--help"
  end
end
