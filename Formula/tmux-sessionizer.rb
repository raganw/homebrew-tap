class TmuxSessionizer < Formula
  desc "A tmux session manager written in Rust"
  homepage "https://github.com/raganw/tmux-sessionizer"
  url "https://github.com/raganw/tmux-sessionizer/releases/download/v0.3.1/tmux-sessionizer-0.3.1-universal-macos.tar.gz"
  sha256 "05e6e5cd98e2c596df1dd07145e6583bf1bb0d331c4a91cc041619285942ba20"
  version "0.3.1"
  
  depends_on "tmux"
  depends_on "openssl@3"
  
  def install
    bin.install "tmux-sessionizer"
  end
  
  test do
    system "#{bin}/tmux-sessionizer", "--version"
  end
end
