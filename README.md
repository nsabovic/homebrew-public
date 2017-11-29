# What?

Files required to build Linux kernel on macOS.

# How?

Not that hard. Install all the GNU tools and make sure they're used:

    brew install findutils coreutils gnu-tar gnu-sed make

    export PATH="/usr/local/opt/findutils/libexec/gnubin:/usr/local/opt/coreutils/libexec/gnubin:/usr/local/opt/gnu-tar/libexec/gnubin:/usr/local/opt/gnu-sed/libexec/gnubin:/usr/local/opt/make/libexec/gnubin:$PATH"

For `make menuconfig` you need ncurses:

    brew install ncurses

    export PKG_CONFIG_PATH="$PKG_CONFIG_PATH:/usr/local/opt/ncurses/lib/pkgconfig"

Install the `elf.h` header:

  brew install nsabovic/linuxonmac/elf-header

Then build the kernel. `make menuconfig` should work. You may run into issues
where kernel calls `/bin/false`, which won't work since macOS has it in
`/usr/bin/false`. I suggest just replacing these calls in the `Makefile`s.
