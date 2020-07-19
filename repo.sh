#!/bin/sh

rm -rf $WEBSITE/Packages

rm -rf $WEBSITE/Packages.bz2

echo building package list
dpkg-scanpackages -m $WEBSITE/debs > $WEBSITE/Packages

bzip2 -5fkv $WEBSITE/Packages > $WEBSITE/Packages.bz2
