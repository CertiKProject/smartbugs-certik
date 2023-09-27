#!/bin/sh

FILENAME="$1"
TIMEOUT="$2"
BIN="$3"

chmod +x "$BIN/solc"
git config --global --add safe.directory /app

mkdir source
cp "$FILENAME" ./source

export BIN
export FILENAME
su slink -l -c "bash `dirname $0`/run_slither.sh \"$BIN\" \"$FILENAME\""
cp /home/slink/output.json /
