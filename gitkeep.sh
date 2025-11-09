#!/bin/bash
# -------------------------------------
# Add .gitkeep files to all empty dirs
# -------------------------------------

echo "🔍 Scanning for empty directories..."

find . -type d -empty -not -path "./.git*" -print | while read dir; do
  touch "$dir/.gitkeep"
  echo "📁 Added .gitkeep to: $dir"
done

echo "✅ Done! All empty directories now have a .gitkeep file."

