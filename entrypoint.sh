#!/usr/bin/env bash

set -e

PATH="${1:-.}"
OPTIONS="${2}"
VERSION="${3:-1.7.0}"

echo $PATH

pip3 install bandit=="${VERSION}"

bandit "$OPTIONS" "$PATH"
