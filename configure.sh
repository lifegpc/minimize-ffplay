#!/bin/bash
loc=`pwd`/ffbuild
mkdir -p ffbuild
cd ffmpeg
./configure \
	--disable-doc \
	--disable-encoders \
	--disable-ffmpeg \
	--disable-ffprobe \
	--disable-muxers \
	--enable-gpl \
	--enable-gmp \
	--enable-gnutls \
	--enable-small \
	--enable-version3 \
	'--extra-ldflags=-static' \
	'--pkg-config-flags=--static' \
	--prefix=$loc
if [ $? -ne 0 ]
then 
	echo "::set-output name=conf::false"
else
	echo "::set-output name=conf::true"
fi
