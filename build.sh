#!/usr/bin/env sh

SCRIPT_DIR="./src"
OUTPUT_DIR="./build"
OUTPUT_FILE="$OUTPUT_DIR/MemoryLib.j"

mkdir -p "$OUTPUT_DIR"

for filename in $SCRIPT_DIR/*.j; do
  cat "$filename"
  echo ""
done > "$OUTPUT_FILE"
