#!/usr/bin/env bash
set -e

repo="${1}"
file="${2}"
prefix="${3:keybase-secret-}"
output="${prefix}${file/\//-}"

export KEYBASE_ALLOW_ROOT=1

keybase oneshot

git clone $repo $HOME/secrets

cp "${HOME}/secrets/${file}" "${output}"

echo "file=${output}" >> $GITHUB_OUTPUT
