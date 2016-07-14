#!/bin/bash

cd ~/keybard
echo 'Generating Code'
tsc
./deploy.pl
echo 'Copying Files'
cp deploy.html ~/keybard-testing/index.html
cp -r resources ~/keybard-testing/
cd ~/keybard-testing
git commit -am "Build $(date)"
git push
