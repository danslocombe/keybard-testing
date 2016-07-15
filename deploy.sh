#!/bin/bash

# Loads of hardcoded values
# think this is fine

rm -rf "public/resources"
rm -rf "public/build"
rm -f "public/index.html"

srcdir="kb-source"

if [ -d "$srcdir" ]; then
  rm -rf $srcdir
fi

echo 'Cloning'
mkdir $srcdir
cd $srcdir
git clone git@bitbucket.org:danslocombe/keybard.git

cd keybard

echo 'Compiling'
tsc
perl deploy.pl


echo 'Copying Files'
cp index.html ../../public
cp -r build ../../public
cp -r resources ../../public

cd ../../
