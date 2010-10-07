#!/bin/bash
echo sandbox
git --git-dir=sandbox/.git count-objects -v
echo
echo sandbox.git
git --git-dir=sandbox.git count-objects -v
echo
echo staged.git
git  --git-dir=staged.git count-objects -v
du -B M --max-depth=1

