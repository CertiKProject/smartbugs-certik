#!/bin/sh

FILENAME="$1"
TIMEOUT="$2"
BIN="$3"

export PATH="$BIN:$PATH"
chmod +x "$BIN/solc"

git config --global --add safe.directory /app

mkdir source
cp "$FILENAME" ./source

/app/run-in-pipenv.sh
