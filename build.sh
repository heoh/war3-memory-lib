#!/usr/bin/env sh

SCRIPT_DIR="src"
OUTPUT_DIR="build"
OUTPUT_FILE="$OUTPUT_DIR/MemoryLib.j"

echo "Output File: $OUTPUT_FILE"
echo ""

echo "Creating directory..."
mkdir -p "$OUTPUT_DIR"

echo "Writing header..."
echo "\
/*
 * MemoryLib
 * commit: $(git rev-parse --short HEAD) ($(git rev-list --count HEAD))
 */\
" > "$OUTPUT_FILE"

echo "Writing body..."
for filename in $SCRIPT_DIR/*.j; do
  echo ""
  echo "// source: $filename"
  cat "$filename"
done >> "$OUTPUT_FILE"

echo "Build finish!"
