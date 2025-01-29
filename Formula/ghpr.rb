# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Ghpr < Formula
  desc "Creates a pull request on GitHub setting the PR title to JIRA issue title"
  homepage "https://jmoney.dev/create-pr-from-jira"
  version "0.1"
  license "Apache 2.0"

  on_macos do
    on_intel do
      url "https://github.com/jmoney/create-pr-from-jira/releases/download/0.1/ghpr_0.1_darwin_amd64.tar.gz"
      sha256 "b0e99ec1d9679d8af90158eb2024d20d3fa2182e98d8b8d2cb9b1cbfc9c0dae4"

      def install
        bin.install "ghpr"
      end
    end
    on_arm do
      url "https://github.com/jmoney/create-pr-from-jira/releases/download/0.1/ghpr_0.1_darwin_arm64.tar.gz"
      sha256 "d950623ff195031444f3128296b3c0fdb54f5e8172f2f0f1cc4a2b771c2ec229"

      def install
        bin.install "ghpr"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/jmoney/create-pr-from-jira/releases/download/0.1/ghpr_0.1_linux_amd64.tar.gz"
        sha256 "4979ad5d401f823ac5b2f8e015d789236810adb39a3c9ee331bdfb6ddd79619e"

        def install
          bin.install "ghpr"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/jmoney/create-pr-from-jira/releases/download/0.1/ghpr_0.1_linux_arm64.tar.gz"
        sha256 "ad8d2dbdd52585a1d26efc35429783535b8229181af5040cd954e7dba1f161d1"

        def install
          bin.install "ghpr"
        end
      end
    end
  end

  test do
    system "#{bin}/ghpr -h"
  end
end
