class Downstage < Formula
  desc "Plaintext markup language and tools for stage plays"
  homepage "https://github.com/jscaltreto/downstage"
  version "0.7.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/jscaltreto/downstage/releases/download/v0.7.0/downstage_0.7.0_Darwin_x86_64.tar.gz"
      sha256 "6a82127a5698b03dd62631ad99ebac8837e2b83f1a81162fdcdb35929c904af0"
    end

    on_arm do
      url "https://github.com/jscaltreto/downstage/releases/download/v0.7.0/downstage_0.7.0_Darwin_arm64.tar.gz"
      sha256 "713a6eb883644d6484af2133dccb1169e9b56ee96baf532958fbd33432577c48"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/jscaltreto/downstage/releases/download/v0.7.0/downstage_0.7.0_Linux_x86_64.tar.gz"
      sha256 "a50183bb2d69767d133b10fc01e3063bbb99538f79dd940d7b87507cea243b3e"
    end

    on_arm do
      url "https://github.com/jscaltreto/downstage/releases/download/v0.7.0/downstage_0.7.0_Linux_arm64.tar.gz"
      sha256 "59c8331c81f5f042e8fd9509346405616a2f4e9e52e16e34f222205bd7032716"
    end
  end

  def install
    bin.install "downstage"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/downstage version")
  end
end
