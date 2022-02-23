class Couper < Formula
    desc "Couper is a lightweight open source API gateway designed to support developers in building and running API-driven Web projects."
    homepage "https://couper.io/"
    license "MIT"
    version "v1.7.1-joe"
    head "https://github.com/avenga/couper.git", branch: "master"

    on_macos do
      if Hardware::CPU.arm?
        url "https://github.com/avenga/couper/releases/download/v1.7.1-joe/couper-v1.7.1-joe-macos-arm64.zip"
        sha256 "566153de85011486743b405dcff0f5d2680349ce72cf2fc7e94f290527413ff9"

        def install
          bin.install "couper"
        end
      end
      if Hardware::CPU.intel?
        url "https://github.com/avenga/couper/releases/download/v1.7.1-joe/couper-v1.7.1-joe-macos-amd64.zip"
        sha256 "5cc11ddb6dbc44f99799cc08f33f31e4a87238c1fb10a7cd53315a8cffa51771"

        def install
          bin.install "couper"
        end
      end
    end

    on_linux do
      if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
        url "https://github.com/avenga/couper/releases/download/v1.7.1-joe/couper-v1.7.1-joe-linux-arm64.zip"
        sha256 "3a62dfec1527995ad19d2847ef213603f0c379fecb1966dfa67177c35fb08844"

        def install
          bin.install "couper"
        end
      end
      if Hardware::CPU.intel?
        url "https://github.com/avenga/couper/releases/download/v1.7.1-joe/couper-v1.7.1-joe-linux-amd64.zip"
        sha256 "83d3534cb38b323284c765382dfc84d8e82f01f974ea5921893ff96a12fae236"

        def install
          bin.install "couper"
        end
      end
    end

    test do
      system "#{bin}/couper version"
    end
  end
