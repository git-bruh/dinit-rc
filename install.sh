#!/bin/sh

set -eu

: "${DESTDIR:=$1}"
: "${PREFIX:=/usr}"

LIBDIR="$PREFIX/lib"

SCRIPTDIR="$DESTDIR/$LIBDIR/dinit"
SERVICEDIR="$DESTDIR/$LIBDIR/dinit.d"
CONFDIR="$DESTDIR/etc/dinit.d"

mkdir -p "$SCRIPTDIR"
cp scripts/* "$SCRIPTDIR"

mkdir -p "$SERVICEDIR"
cp core/* "$SERVICEDIR"

mkdir -p "$CONFDIR/config" "$CONFDIR/boot.d"
cp extra/* "$CONFDIR"
