#! /bin/bash
set -e
set -u

git fetch --all --prune
git pull --rebase
git submodule update --init --recursive
cd vim/bundle/vimproc.vim
make
