class Inspect < Formula
  desc "A command line tool to run Android Studio inspect on modified git files"
  homepage "https://github.com/mfr/tools"
  #url "https://github.com/TheHipbot/weather/raw/master/archive/weather-1.0.0.tar.gz"
  #sha256 "b1c7ab25dfb4530a5e35aa690d79469de5ec419dd284f03868935c2417e1ee3a"
  url "https://27.io/inspect.zip"
  sha256 "9c61a34596b70c7a09d965bcaf5c6ae32f5e4de034eb5637065d2dbb551c530a"
  version "1.0.4"

  depends_on "python"

  bottle :unneeded

  def install
    inreplace "inspect", "KTLINT_XML", "#{pkgshare}/xml/ktlint.xml"
    bin.install "inspect"
    pkgshare.install "xml"
  end
end
