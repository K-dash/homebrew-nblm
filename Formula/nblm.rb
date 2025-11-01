# Formula/nblm.rb
class Nblm < Formula
    desc "NotebookLM Enterprise CLI"
    homepage "https://github.com/K-dash/nblm-rs"
    license "MIT"
    version "0.2.0"

    on_macos do
      on_arm do
        url "https://github.com/K-dash/nblm-rs/releases/download/v0.2.0/nblm-macos-aarch64.tar.gz"
        sha256 "0c52d337dc108de7d4ba349acd636470467760e5f2de25edba7b389f5a2a79e0"
      end
      on_intel do
        url "https://github.com/K-dash/nblm-rs/releases/download/v0.2.0/nblm-macos-x86_64.tar.gz"
        sha256 "6b3543d8603574534c4d4c65f66dc67ad5040aebca5dff7a39f13a2d37bd644f"
      end
    end

    def install
      bin.install "nblm"
    end

    test do
      system "#{bin}/nblm", "--version"
    end
  end
