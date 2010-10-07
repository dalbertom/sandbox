#!/bin/bash
rm -rf staged
rm -rf sandbox
rm -rf staged.git
rm -rf sandbox.git
git init --bare staged.git
git init --bare sandbox.git
git clone staged.git
git clone sandbox.git
pushd sandbox
git remote add -f prod ../prod.git
git remote set-url --push prod ../sandbox.git
popd
