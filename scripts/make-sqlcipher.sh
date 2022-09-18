#!/usr/bin/env bash

# update git submodule and run this script to update SQLCipher amalgamation

mkdir build
cd build
../sqlcipher/configure
make sqlite3.c
cp sqlite3.c ../cbits
cp sqlite3.h ../cbits
cp sqlite3ext.h ../cbits
