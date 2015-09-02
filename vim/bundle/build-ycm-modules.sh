#! /bin/bash
if ! (which cmake && which make) > /dev/null 2>&1; then
    exit 1
fi
MODULEDIR="$(dirname "$(readlink -f "$0")")"
COMPILEDIR="/tmp/ycm_temp"
[ -d "$COMPILEDIR" ] && rm -rf "$COMPILEDIR"
mkdir "$COMPILEDIR"
cd "$COMPILEDIR"
cmake . "$MODULEDIR/YouCompleteMe/third_party/ycmd/cpp" && \
    make -j$(nproc) ycm_support_libs
cd -
rm -rf "$COMPILEDIR"

