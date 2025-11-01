# Formula/nblm.rb
class Nblm < Formula
    desc "NotebookLM Enterprise CLI"
    homepage "https://github.com/K-dash/nblm-rs"
    license "MIT"
    version "0.2.1"

    on_macos do
      on_arm do
        url "https://github.com/K-dash/nblm-rs/releases/download/v0.2.1/nblm-macos-aarch64.tar.gz"
        sha256 "3b3db47d9420c0e78842653976557dab81a6d6bf83f7902e0e393f453f91db0a"
      end
      on_intel do
        url "https://github.com/K-dash/nblm-rs/releases/download/v0.2.1/nblm-macos-x86_64.tar.gz"
        sha256 "d22c57c721d2abd9340b36ff93d07689bbef327700bfe3e8fafafc024cc20218"
      end
    end

    def install
      bin.install "nblm"
    end

    test do
      system "#{bin}/nblm", "--version"
    end
  end
