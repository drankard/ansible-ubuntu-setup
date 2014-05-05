#! /bin/bash

#
# build.sh - Build the ansible client seup package.
#
# See README for details.
#

REV=$(git rev-list HEAD | wc -l)

sed "s#%%REV%%#$REV#g" ansible-client/DEBIAN/control.tmpl > ansible-client/DEBIAN/control

version=$(echo $(grep Version ansible-client/DEBIAN/control | cut -d: -f2))
if [ -z "$version" ]; then
    echo "Unable to find the version number" >&2
    exit 1
fi

fakeroot dpkg-deb --build ansible-client ansible-client-$version.deb

rm -f ansible-client/DEBIAN/control

echo "If you have made changes you have updated the version number, haven't you?" >&2
