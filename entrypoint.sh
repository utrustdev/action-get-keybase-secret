#!/bin/bash -ue

repo=$1
file=$2
output=keybase-secret-${file/\//-}

export KEYBASE_ALLOW_ROOT=1

keybase oneshot

git clone $repo $HOME/secrets

cp $HOME/secrets/$file $output

echo "file=${output}" >> $GITHUB_OUTPUT
