#!/bin/bash -ue

repo=$1
file=$2
output=keybase-secret-${file/\//-}

export KEYBASE_ALLOW_ROOT=1

run_keybase
sleep 5
keybase oneshot

git clone $repo $HOME/secrets

ls $HOME/secrets
echo $output
cat $HOME/secrets/$file
cp $HOME/secrets/$file $output

echo ::set-output name=file::$output
