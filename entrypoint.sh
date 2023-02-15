#!/bin/bash -ue

repo=$1
file=$2
output=keybase-secret-${file/\//-}

export KEYBASE_SERVICE=1

git clone $repo $HOME/secrets

cp $HOME/secrets/$file $output

echo "file=${output}" >> $GITHUB_OUTPUT
