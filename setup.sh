SETUPFLAGS=--noconfirm --overwrite '*'
GNUTLS=gnutls.pkg.tar.zst
curl "https://github.com/lifegpc/static-mingw-w64-gnutls/releases/download/3.7.1-1/mingw-w64-x86_64-gnutls-3.7.1-1-any.pkg.tar.zst" -o $GNUTLS -L || exit 1
pacman -U $GNUTLS $SETUPFLAGS || exit 1
