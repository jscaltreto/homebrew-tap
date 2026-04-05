class Downstage < Formula
  desc "Plaintext markup language and tools for stage plays"
  homepage "https://github.com/jscaltreto/downstage"
  version "0.4.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/jscaltreto/downstage/releases/download/v0.4.0/downstage_0.4.0_Darwin_x86_64.tar.gz"
      sha256 "367b79fc5e806f931a4346194ba12cc587a270d0ea528f79a3cce6dabceb1ad9"
    end

    on_arm do
      url "https://github.com/jscaltreto/downstage/releases/download/v0.4.0/downstage_0.4.0_Darwin_arm64.tar.gz"
      sha256 "50556af6d2df3c9b4c162cf665dfa895cd1af29c5832b274d491dfb56d86f13c"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/jscaltreto/downstage/releases/download/v0.4.0/downstage_0.4.0_Linux_x86_64.tar.gz"
      sha256 "f1c3730b88e6ee65fed684539be2bccbae956433c0c316251b4989f7fe19fb38"
    end

    on_arm do
      url "https://github.com/jscaltreto/downstage/releases/download/v0.4.0/downstage_0.4.0_Linux_arm64.tar.gz"
      sha256 "bc8fab41db7874f3ab3769b6e1a5fad46313246cb796d760c06b9e311eee00b0"
    end
  end

  def install
    bin.install "downstage"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/downstage version")
  end
end
