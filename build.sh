#!/bin/bash

if [ -z "$1" ]; then
  echo "Specify either 'x86' or 'x86_64' on the command prompt to build."
  echo "Ex: build.sh x86"
  exit 1
fi

if [ ! -d "build" ]; then
  mkdir build
fi

g++ -Iinclude -Icef3 -o build/barebones `pkg-config --cflags gtk+-2.0` barebones.cc -Lcef3/bin/linux/$1/cef -lcef -lcef_dll_wrapper -Wl,-rpath,. `pkg-config --libs gtk+-2.0`
cp cef3/bin/linux/$1/cef/*.so build/
if [ ! -d "build/locales" ]; then
  mkdir build/locales/
fi
cp cef3/locales/* build/locales/
