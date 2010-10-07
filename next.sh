#!/bin/bash

pushd sandbox
for i in `ls .git/refs/heads`; do
  echo $i
  git rev-list --topo-order --first-parent --reverse $i..prod/$i | head -1 | xargs --no-run-if-empty git update-ref refs/heads/$i
  git push --quiet origin $i
done
popd
