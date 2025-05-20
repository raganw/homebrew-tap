class TmuxSessionizer < Formula
  desc "A tmux session manager written in Rust"
  homepage "https://github.com/raganw/tmux-sessionizer"
  url "https://github.com/raganw/tmux-sessionizer/releases/download/v0.2.0/tmux-sessionizer-0.2.0-universal-macos.tar.gz"
  sha256 "43dee52662e60912a5ecb51a30859ffb70db3980ed28ed9ef34e8e23ed1590da"
  version "0.2.0"
  
  depends_on "tmux"
  depends_on "openssl@3"
  
  def install
    bin.install "tmux-sessionizer"
  end
  
  test do
    system "#{bin}/tmux-sessionizer", "--version"
  end
end
