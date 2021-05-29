#!/bin/bash
loc=`pwd`/ffbuild-x86
mkdir -p ffbuild-x86
cd ffmpeg
FLAGS=--disable-doc
FLAGS+=' --disable-encoders'
FLAGS+=' --disable-ffmpeg'
FLAGS+=' --disable-ffprobe'
FLAGS+=' --disable-muxers'
FLAGS+=' --enable-gpl'
FLAGS+=' --enable-gmp'
FLAGS+=' --enable-gnutls'
# FLAGS+=' --enable-libass'
# FLAGS+=' --enable-libfontconfig'
# FLAGS+=' --enable-libfreetype'
# FLAGS+=' --enable-libfribidi'
# FLAGS+=' --enable-libssh'
FLAGS+=' --enable-libxml2'
FLAGS+=' --enable-small'
FLAGS+=' --enable-version3'
FLAGS+=' --extra-ldflags=-static'
FLAGS+=' --pkg-config-flags=--static'
FLAGS+=" --prefix=$loc"
./configure $FLAGS
echo $?
