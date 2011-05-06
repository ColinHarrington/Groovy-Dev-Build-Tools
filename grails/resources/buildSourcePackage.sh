#!/bin/bash
PKG_NAME=$1
PKG_VERSION=$2
EXPLODED_DIST=$3
GRAILS_PKG_DIR=$GRAILS_PKG_NAME-$GRAILS_PKG_VERSION
PKG_TAR=$PKG_NAME-$PKG_VERSION.tar.gz
ORIG_PKG_TAR=$PKG_NAME\_$PKG_VERSION.orig.tar.gz

echo $GRAILS_EXPLODED_DIST;
mkdir build/staging;
cd $EXPLODED_DIST;
tar czf ../staging/$PKG_TAR *;
cd ../staging;
cp $PKG_TAR $ORIG_PKG_TAR;
mkdir $PKG_NAME-$PKG_VERSION
tar -C $PKG_NAME-$PKG_VERSION -xzvf grails-1.3.5_1.0.orig.tar.gz

