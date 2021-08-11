#!/usr/bin/env sh

SCRIPT_DIR="src"
OUTPUT_DIR="build"
OUTPUT_FILE="$OUTPUT_DIR/MemoryLib.j"

echo "Output File: $OUTPUT_FILE"
echo ""

echo "Creating file..."
mkdir -p "$OUTPUT_DIR"
echo "" > "$OUTPUT_FILE"

echo "Writing header..."
echo "\
/*
 * MemoryLib
 */\
" >> "$OUTPUT_FILE"

echo "Writing body..."
for filename in $SCRIPT_DIR/*.j; do
  echo ""
  echo "// source: $filename"
  cat "$filename"
done >> "$OUTPUT_FILE"

echo "Build finish!"
