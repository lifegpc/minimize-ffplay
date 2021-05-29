SETUPFLAGS="--noconfirm --overwrite '*'"
GNUTLS=gnutls.pkg.tar.zst
LIBXML2=libxml2.pkg.tar.zst
BROTLI=brotli.pkg.tar.zst
HARFBUZZ=harfbuzz.pkg.tar.zst
FONTCONFIG=fontconfig.pkg.tar.zst
FREETYPE=freetype.pkg.tar.zst
FRIBIDI=fribidi.pkg.tar.zst
LIBASS=libass.pkg.tar.zst
curl "https://github.com/lifegpc/static-mingw-w64-gnutls/releases/download/3.7.1-1/mingw-w64-x86_64-gnutls-3.7.1-1-any.pkg.tar.zst" -o $GNUTLS -L || exit 1
pacman -U $GNUTLS $SETUPFLAGS || exit 1
curl "https://github.com/lifegpc/static-mingw-w64-libxml2/releases/download/2.9.12-1/mingw-w64-x86_64-libxml2-2.9.12-1-any.pkg.tar.zst" -o $LIBXML2 -L || exit 1
pacman -U $LIBXML2 $SETUPFLAGS || exit 1
curl "https://github.com/lifegpc/static-mingw-w64-brotli/releases/download/1.0.9-2/mingw-w64-x86_64-brotli-1.0.9-2-any.pkg.tar.zst" -o $BROTLI -L || exit 1
pacman -U $BROTLI $SETUPFLAGS || exit 1
curl "https://github.com/lifegpc/static-mingw-w64-harfbuzz/releases/download/2.8.1-1/mingw-w64-x86_64-harfbuzz-2.8.1-1-any.pkg.tar.zst" -o $HARFBUZZ -L || exit 1
pacman -U $HARFBUZZ $SETUPFLAGS || exit 1
curl "https://github.com/lifegpc/static-mingw-w64-fontconfig/releases/download/2.13.93-3/mingw-w64-x86_64-fontconfig-2.13.93-3-any.pkg.tar.zst" -o $FONTCONFIG -L || exit 1
pacman -U $FONTCONFIG $SETUPFLAGS || exit 1
curl "https://github.com/lifegpc/static-mingw-w64-freetype/releases/download/2.10.4-3/mingw-w64-x86_64-freetype-2.10.4-3-any.pkg.tar.zst" -o $FREETYPE -L || exit 1
pacman -U $FREETYPE $SETUPFLAGS || exit 1
curl "https://github.com/lifegpc/static-mingw-w64-fribidi/releases/download/1.0.10-2/mingw-w64-x86_64-fribidi-1.0.10-2-any.pkg.tar.zst" -o $FRIBIDI -L || exit 1
pacman -U $FRIBIDI $SETUPFLAGS || exit 1
curl "https://github.com/lifegpc/static-mingw-w64-libass/releases/download/0.15.1-1/mingw-w64-x86_64-libass-0.15.1-1-any.pkg.tar.zst" -o $LIBASS -L || exit 1
pacman -U $LIBASS $SETUPFLAGS || exit 1
