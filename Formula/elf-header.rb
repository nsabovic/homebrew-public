class ElfHeader < Formula
  desc "An elf.h header for building Linux kernel on macOS"
  homepage "https://github.com/nsabovic/linuxonmac-elf"
  url "https://github.com/nsabovic/linuxonmac-elf/archive/1.0.tar.gz"
  sha256 "5717e64d78820fb51c348c0806dc09869518b793c7e12cfa41cbeaf9dd027974"

  depends_on "libelf"

  def install
    include.install "elf.h"
  end
end
