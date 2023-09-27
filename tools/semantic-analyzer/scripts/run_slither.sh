#!/bin/sh

BIN="$1"
FILENAME="$2"

PATH="$BIN:$PATH" slither "$FILENAME" --json ~/output.json
