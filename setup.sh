SETUPFLAGS="--noconfirm --overwrite '*'"
GNUTLS=gnutls.pkg.tar.zst
LIBXML2=libxml2.pkg.tar.zst
BROTLI=brotli.pkg.tar.zst
curl "https://github.com/lifegpc/static-mingw-w64-gnutls/releases/download/3.7.1-1/mingw-w64-x86_64-gnutls-3.7.1-1-any.pkg.tar.zst" -o $GNUTLS -L || exit 1
pacman -U $GNUTLS $SETUPFLAGS || exit 1
curl "https://github.com/lifegpc/static-mingw-w64-libxml2/releases/download/2.9.12-1/mingw-w64-x86_64-libxml2-2.9.12-1-any.pkg.tar.zst" -o $LIBXML2 -L || exit 1
pacman -U $LIBXML2 $SETUPFLAGS || exit 1
curl "https://github.com/lifegpc/static-mingw-w64-brotli/releases/download/1.0.9-2/mingw-w64-x86_64-brotli-1.0.9-2-any.pkg.tar.zst" -o $BROTLI -L || exit 1
pacman -U $BROTLI $SETUPFLAGS || exit 1
