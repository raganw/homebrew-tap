class TmuxSessionizer < Formula
  desc "A tmux session manager written in Rust"
  homepage "https://github.com/raganw/tmux-sessionizer"
  url "https://github.com/raganw/tmux-sessionizer/releases/download/v0.3.0/tmux-sessionizer-0.3.0-universal-macos.tar.gz"
  sha256 "ed99c189b21175114e8e5085ac6b6e09a42b991028471a2e9fb5779910f6c92b"
  version "0.3.0"
  
  depends_on "tmux"
  depends_on "openssl@3"
  
  def install
    bin.install "tmux-sessionizer"
  end
  
  test do
    system "#{bin}/tmux-sessionizer", "--version"
  end
end
