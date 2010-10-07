#!/bin/bash

pushd sandbox
for i in master topic1 topic2; do
  echo $i
  git update-ref refs/heads/$i prod/$i
done
popd
