#!/bin/sh

rm -rf $WEBSITE/Packages

rm -rf $WEBSITE/Packages.bz2

echo building package list
dpkg-scanpackages -m ./debs > ./Packages

bzip2 -5fkv ./Packages > ./Packages.bz2
