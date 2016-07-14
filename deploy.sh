#!/bin/bash

cd ~/keybard
echo 'Generating Code'
tsc
./deploy.pl
echo 'Copying Files'
cp deploy.html ~/keybard-testing/index.html
cp -r resources ~/keybard-testing/
cd ~/keybard-testing
git add index.html resources -A
git commit -m "Build $(date)"
git push
