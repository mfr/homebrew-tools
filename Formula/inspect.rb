class Inspect < Formula
  desc "A command line tool to run Android Studio inspect on modified git files"
  homepage "https://github.com/mfr/tools"
  url "https://27.io/inspect.zip"
  sha256 "9d9320c5629639ecb21038a700d37d1eff66602759669a984943e4f1edbf437a"
  version "1.0.8"

  depends_on "python"
  depends_on "jq"

  bottle :unneeded

  def install
    inreplace "inspect", "KTLINT_XML", "#{pkgshare}/xml/ktlint.xml"
    bin.install "inspect"
    pkgshare.install "xml"
  end
end
