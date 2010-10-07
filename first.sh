#!/bin/bash

pushd sandbox
for i in `ls .git/refs/heads`; do
  echo $i
  git rev-list --reverse --topo-order --first-parent --since="September 29" prod/$i | head -1 | xargs --no-run-if-empty git update-ref refs/heads/$i
done
popd
