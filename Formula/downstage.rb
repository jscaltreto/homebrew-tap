class Downstage < Formula
  desc "Plaintext markup language and tools for stage plays"
  homepage "https://github.com/jscaltreto/downstage"
  version "0.4.1"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/jscaltreto/downstage/releases/download/v0.4.1/downstage_0.4.1_Darwin_x86_64.tar.gz"
      sha256 "c6ab54ee351ac1b892c77c29d2d7235263e46bdee7f2381745f132831e237739"
    end

    on_arm do
      url "https://github.com/jscaltreto/downstage/releases/download/v0.4.1/downstage_0.4.1_Darwin_arm64.tar.gz"
      sha256 "061cc94f953873d00d44cdb8542fc42910d948db228daa0eba3549c064601332"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/jscaltreto/downstage/releases/download/v0.4.1/downstage_0.4.1_Linux_x86_64.tar.gz"
      sha256 "d5b290789b694d312512d0872f52f39037e263630bca858e2b75c1610bb5e1e8"
    end

    on_arm do
      url "https://github.com/jscaltreto/downstage/releases/download/v0.4.1/downstage_0.4.1_Linux_arm64.tar.gz"
      sha256 "6a82338c9f6a51888f463482200ea354c154242fd4e3190123bda8130deae92a"
    end
  end

  def install
    bin.install "downstage"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/downstage version")
  end
end
