#!/bin/sh

set -eu

: "${DESTDIR:=$1}"
: "${PREFIX:=/usr}"

LIBDIR="$PREFIX/lib"
LOGDIR="$DESTDIR/var/log/dinit"
SCRIPTDIR="$DESTDIR/$LIBDIR/dinit"
SERVICEDIR="$DESTDIR/$LIBDIR/dinit.d"
CONFDIR="$DESTDIR/etc/dinit.d"

mkdir -p "$SCRIPTDIR"
cp scripts/* "$SCRIPTDIR"

mkdir -p "$SERVICEDIR"
cp core/* "$SERVICEDIR"

mkdir -p "$CONFDIR/config" "$CONFDIR/boot.d" "$CONFDIR/user"
cp extra/* "$CONFDIR"
cp user/* "$CONFDIR/user"
cp conf/* "$CONFDIR/config"

mkdir -p "$LOGDIR"
