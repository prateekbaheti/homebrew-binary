require 'formula'

class Gauge < Formula
  homepage 'http://www.getgauge.io'

  if MacOS.prefer_64_bit?
    url 'http://download01.thoughtworks.com/gauge/gauge/0.0.2/gauge-0.0.2-darwin.x86_64.tar.gz'
    version '0.0.2'
    sha1 'ca2a1686f5bc626e0a02901f1d6bc6b49f9cfd26'
  else
    url 'http://download01.thoughtworks.com/gauge/gauge/0.0.2/gauge-0.0.2-darwin.x86.tar.gz'
    version '0.0.2'
    sha1 'd06d5e41c7b6b223fec9f82d9b44e101b46edc16'
  end

  def install
    bin.install 'bin/gauge'
    share.install 'share/gauge'
  end

  test do
    system "#{bin}/gauge"
  end
end
