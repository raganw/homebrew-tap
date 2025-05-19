class TmuxSessionizer < Formula
  desc "A tmux session manager written in Rust"
  homepage "https://github.com/raganw/tmux-sessionizer"
  url "https://github.com/raganw/tmux-sessionizer/releases/download/v0.1.4/tmux-sessionizer-0.1.4-universal-macos.tar.gz"
  sha256 "026cf0d74a2a69c2bfdb92fea3a1bae86be6e9455d4e75be2d837a4792057a0e"
  version "0.1.4"
  
  depends_on "tmux"
  
  def install
    bin.install "tmux-sessionizer"
  end
  
  test do
    system "#{bin}/tmux-sessionizer", "--version"
  end
end
