class Downstage < Formula
  desc "Plaintext markup language and tools for stage plays"
  homepage "https://github.com/jscaltreto/downstage"
  version "0.5.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/jscaltreto/downstage/releases/download/v0.5.0/downstage_0.5.0_Darwin_x86_64.tar.gz"
      sha256 "a1eb1726033eac2b0dd68105e54e7c6cb7163a13ce600b33aabff1d7774fda9c"
    end

    on_arm do
      url "https://github.com/jscaltreto/downstage/releases/download/v0.5.0/downstage_0.5.0_Darwin_arm64.tar.gz"
      sha256 "4dc0550627b51c5f2deb4e5c192d9cd86c7941db14c7e2615252783d7600e39c"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/jscaltreto/downstage/releases/download/v0.5.0/downstage_0.5.0_Linux_x86_64.tar.gz"
      sha256 "f98596919254ad5b72925181d7f175e7c5c110c92db15d4eaab508580297fd06"
    end

    on_arm do
      url "https://github.com/jscaltreto/downstage/releases/download/v0.5.0/downstage_0.5.0_Linux_arm64.tar.gz"
      sha256 "fc5767a8c075dde50214e49eb087f93992b6e08f49c79bd76f00b8bfbe3ace3e"
    end
  end

  def install
    bin.install "downstage"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/downstage version")
  end
end
