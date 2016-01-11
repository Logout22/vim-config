#! /bin/sh
git fetch --all --prune
git pull --rebase && \
    git submodule update --init --recursive

