class Downstage < Formula
  desc "Plaintext markup language and tools for stage plays"
  homepage "https://github.com/jscaltreto/downstage"
  version "0.3.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/jscaltreto/downstage/releases/download/v0.3.0/downstage_0.3.0_Darwin_x86_64.tar.gz"
      sha256 "3ac90fd25b414f2acc34b6064e34f74810fa788ad303a474dc3a69b6e40da8b3"
    end

    on_arm do
      url "https://github.com/jscaltreto/downstage/releases/download/v0.3.0/downstage_0.3.0_Darwin_arm64.tar.gz"
      sha256 "e69531ad129ca84ca4cbd4932d866720494baaf6a9521ea23239532a751fd49c"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/jscaltreto/downstage/releases/download/v0.3.0/downstage_0.3.0_Linux_x86_64.tar.gz"
      sha256 "0492d23e8d462e699a5e82a67ecf3198dba155c505ace57e66e1f8b569c68913"
    end

    on_arm do
      url "https://github.com/jscaltreto/downstage/releases/download/v0.3.0/downstage_0.3.0_Linux_arm64.tar.gz"
      sha256 "22a4853dc1a9b42f991514b13595aa16d71500fc2c3921eb97acbf535ffde6c6"
    end
  end

  def install
    bin.install "downstage"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/downstage version")
  end
end
