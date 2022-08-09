#!/bin/bash -ue

repo="${1}"
file="${2}"
prefix="${3:-keybase-secret}"
output="${prefix}${file/\//-}"

export KEYBASE_ALLOW_ROOT=1

run_keybase
sleep 5
keybase oneshot

git clone $repo $HOME/secrets

cp "${HOME}/secrets/${file}" "${output}"

echo ::set-output name=file::$output
