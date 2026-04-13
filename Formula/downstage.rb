class Downstage < Formula
  desc "Plaintext markup language and tools for stage plays"
  homepage "https://github.com/jscaltreto/downstage"
  version "0.6.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/jscaltreto/downstage/releases/download/v0.6.0/downstage_0.6.0_Darwin_x86_64.tar.gz"
      sha256 "5fd88b925ef3a108ea4dc6bb8f0de502fbe4f06f3ee01a0b005c822ee1f0e5ca"
    end

    on_arm do
      url "https://github.com/jscaltreto/downstage/releases/download/v0.6.0/downstage_0.6.0_Darwin_arm64.tar.gz"
      sha256 "39c550b54819eb6e6572f713cc7d22b72f7d67396a548490254afdd02d52a253"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/jscaltreto/downstage/releases/download/v0.6.0/downstage_0.6.0_Linux_x86_64.tar.gz"
      sha256 "e75ed26cd2a6837e9d144aea0e560196716687a53d6363a4528ae84f324c1533"
    end

    on_arm do
      url "https://github.com/jscaltreto/downstage/releases/download/v0.6.0/downstage_0.6.0_Linux_arm64.tar.gz"
      sha256 "e708bc986ef23e180f90f2b5e55d6f69adfcfc016f6b0b09d95382a825900257"
    end
  end

  def install
    bin.install "downstage"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/downstage version")
  end
end
