class TmuxSessionizer < Formula
  desc "A tmux session manager written in Rust"
  homepage "https://github.com/your-username/tmux-sessionizer"
  url "https://github.com/your-username/tmux-sessionizer/releases/download/v0.1.0/tmux-sessionizer-0.1.0-universal-macos.tar.gz"
  sha256 "replace_with_actual_sha256"
  version "0.1.0"
  
  depends_on "tmux"
  
  def install
    bin.install "tmux-sessionizer"
  end
  
  test do
    system "#{bin}/tmux-sessionizer", "--version"
  end
end