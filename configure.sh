#!/bin/bash
loc=`pwd`/ffbuild
mkdir -p ffbuild
cd ffmpeg
FLAGS=--disable-doc
FLAGS+=' --disable-encoders'
FLAGS+=' --disable-ffmpeg'
FLAGS+=' --disable-ffprobe'
FLAGS+=' --disable-muxers'
FLAGS+=' --enable-gpl'
FLAGS+=' --enable-gmp'
FLAGS+=' --enable-gnutls'
FLAGS+=' --enable-libxml2'
FLAGS+=' --enable-small'
FLAGS+=' --enable-version3'
FLAGS+=' --extra-ldflags=-static'
FLAGS+=' --pkg-config-flags=--static'
FLAGS+=" --prefix=$loc"
CXXFLAGS="-DIN_LIBXML"
./configure $FLAGS --extra-cxxflags=$CXXFLAGS
echo $?
