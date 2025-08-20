class TmuxSessionizer < Formula
  desc "A tmux session manager written in Rust"
  homepage "https://github.com/raganw/tmux-sessionizer"
  url "https://github.com/raganw/tmux-sessionizer/releases/download/v0.5.0/tmux-sessionizer-0.5.0-universal-macos.tar.gz"
  sha256 "0b7db0fa3c669203eb74847889e4058510b929151bdefac49cc216bbeb8a56cf"
  version "0.5.0"
  
  depends_on "tmux"
  depends_on "openssl@3"
  
  def install
    bin.install "tmux-sessionizer"
  end
  
  test do
    system "#{bin}/tmux-sessionizer", "--version"
  end
end
