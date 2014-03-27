require "formula"

class Vagrant < Formula
  homepage "http://www.vagrantup.com/downloads.html"
  url "https://dl.bintray.com/mitchellh/vagrant/vagrant_1.5.1.dmg"
  sha1 "a96f55d746e433e681f07b2668ee19f2674acf6b"

  def install
    system "hdiutil", "mount", "vagrant_1.5.1.dmg"
    system 'sudo installer -pkg /Volumes/Vagrant/Vagrant.pkg -target "/Volumes/Macintosh HD"'
    system "hdiutil", "unmount", "/Volumes/Vagrant"
  end

  test do
    system "vagrant init"
  end
end
