class Downstage < Formula
  desc "Plaintext markup language and tools for stage plays"
  homepage "https://github.com/jscaltreto/downstage"
  version "0.8.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/jscaltreto/downstage/releases/download/v0.8.0/downstage_0.8.0_Darwin_x86_64.tar.gz"
      sha256 "6542e24f755a4e5c68d3327035d8b3d92a996b57374d931cc09ea51a835e6174"
    end

    on_arm do
      url "https://github.com/jscaltreto/downstage/releases/download/v0.8.0/downstage_0.8.0_Darwin_arm64.tar.gz"
      sha256 "64df42f4c07aaf482f1f8c3c66871b03d3f6b4391efa5d568f8828115b91f903"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/jscaltreto/downstage/releases/download/v0.8.0/downstage_0.8.0_Linux_x86_64.tar.gz"
      sha256 "595302259246becd936c50e44eeef09d82a917f5313889b6c604c28534586936"
    end

    on_arm do
      url "https://github.com/jscaltreto/downstage/releases/download/v0.8.0/downstage_0.8.0_Linux_arm64.tar.gz"
      sha256 "36d3c2737fa5d415b496b9f5729fc3d0bc0745f153c63dc0f8f245c1f9d36caf"
    end
  end

  def install
    bin.install "downstage"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/downstage version")
  end
end
