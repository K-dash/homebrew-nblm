# Formula/nblm.rb
class Nblm < Formula
    desc "NotebookLM Enterprise CLI"
    homepage "https://github.com/K-dash/nblm-rs"
    license "MIT"
    version "0.2.0"

    on_macos do
      on_arm do
        url "https://github.com/K-dash/nblm-rs/releases/download/v0.2.0/nblm-macos-aarch64.tar.gz"
        sha256 "4c68904c08f18a39e86c4a04231e23c85f35f3a94314e7fb8e00ead57d553888"
      end
      on_intel do
        url "https://github.com/K-dash/nblm-rs/releases/download/v0.2.0/nblm-macos-x86_64.tar.gz"
        sha256 "d165559cd41bc71b456af9fa30c2083383ea949bb2a6f6131519109183a85c7a"
      end
    end

    def install
      bin.install "nblm"
    end

    test do
      system "#{bin}/nblm", "--version"
    end
  end
