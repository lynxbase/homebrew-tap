# typed: strict
# frozen_string_literal: true

# Homebrew formula for the LynxDB CLI.
class Lynxdb < Formula
  desc "Open-source log analytics database with a single binary and SPL2 query language"
  homepage "https://lynxdb.org"
  version "0.1.4"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/lynxbase/lynxdb/releases/download/v0.1.4/lynxdb-v0.1.4-darwin-amd64.tar.gz"
      sha256 "512ea5192e5d8735d43a6a55a9426046ad92373de89fe313a00ccd4c1dc81b6f"
    end

    on_arm do
      url "https://github.com/lynxbase/lynxdb/releases/download/v0.1.4/lynxdb-v0.1.4-darwin-arm64.tar.gz"
      sha256 "c3791cade1652ddb2bdce95e0df46c16551c9a7c677891b7ddaa8cc57826ccbe"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/lynxbase/lynxdb/releases/download/v0.1.4/lynxdb-v0.1.4-linux-amd64.tar.gz"
      sha256 "5178728637b2262017503ba944118fa305963e72f0fe3317215da3d6446be3c1"
    end

    on_arm do
      url "https://github.com/lynxbase/lynxdb/releases/download/v0.1.4/lynxdb-v0.1.4-linux-arm64.tar.gz"
      sha256 "55a75baf8b8751043ace9f0460ae314f5149b3da0f588292e4aee1a8cb18b2b3"
    end
  end

  def install
    bin.install "lynxdb"
  end

  test do
    system bin/"lynxdb", "version"
  end
end
