class Gradlew < Formula
  desc "Wrapper for Gradle Wrapper, which add custom coloring to output"
  homepage "https://github.com/mfr/tools"
  url "https://27.io/gradlew.zip"
  sha256 "41cfe865e40705980cc04abdf8cf700b69da4bffc78669a8e78a63f65670ea28"
  version "1.0.0"

  depends_on "gnu-sed"
  depends_on "hilite"

  bottle :unneeded

  def install
    bin.install "gradlew"
  end
end
