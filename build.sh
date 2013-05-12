#!/bin/sh
./configure --prefix=${PWD}/dist --conf-path=conf/spdy.conf --with-http_ssl_module --with-http_spdy_module --with-pcre=./libs/pcre-8.32 --with-zlib=./libs/zlib-1.2.8 --with-debug --with-openssl=./libs/openssl-1.0.1e
