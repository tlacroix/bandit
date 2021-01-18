#!/usr/bin/env bash

set -e

PATH="${1:-.}"
OPTIONS="${2}"
VERSION="${3:-1.7.0}"

which python
which pip

pip3 install bandit=="${VERSION}"

bandit "$OPTIONS" "$PATH"
