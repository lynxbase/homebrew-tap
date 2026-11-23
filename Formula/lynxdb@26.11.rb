class LynxdbAT2611 < Formula
  desc "Log analytics database in one binary, queried with OpenSearch PPL"
  homepage "https://lynxdb.org"
  version "26.11.1.896"
  license "Apache-2.0"

  keg_only :versioned_formula

  on_macos do
    on_arm do
      url "https://github.com/lynxbase/lynxdb/releases/download/v26.11.1.896-stable/lynxdb-26.11.1.896-darwin-arm64.tar.gz"
      sha256 "ca6603c7765328f992a069ba5e2a146e8adb926e73cd03e79a41d245e352f01a"
    end
    on_intel do
      url "https://github.com/lynxbase/lynxdb/releases/download/v26.11.1.896-stable/lynxdb-26.11.1.896-darwin-amd64.tar.gz"
      sha256 "b0a09a69a9026ce580cd15b6bd7c20d83b737397adccc0992726d233d59ad2e1"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/lynxbase/lynxdb/releases/download/v26.11.1.896-stable/lynxdb-26.11.1.896-linux-arm64.tar.gz"
      sha256 "952fdbbe8ccdd7e59886c5f84a68ad1e0e6817cfc2335d9bcc5e5b3c1f727101"
    end
    on_intel do
      url "https://github.com/lynxbase/lynxdb/releases/download/v26.11.1.896-stable/lynxdb-26.11.1.896-linux-amd64.tar.gz"
      sha256 "9cab1abe857abf653e37e86c20e74f0471ed27a842ff3f55904fc61e4c400ea2"
    end
  end

  def install
    bin.install "lynxdb"
  end

  test do
    assert_equal version.to_s, shell_output("#{bin}/lynxdb version --short").strip
  end
end
