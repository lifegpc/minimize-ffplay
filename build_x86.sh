cd ffmpeg || exit 1
make || exit 1
make install || exit 1
cd ../ffbuild-x86 || exit 1
7z a -mx9 -y ../ffbuild-x86.7z *
