#!/usr/bin/env bash
set -euo pipefail

ROOT="$(cd "$(dirname "$0")/.." && pwd)"
TARGET="${1:-}"

if [ -z "$TARGET" ]; then
  echo "Usage: ./scripts/report.sh projects/<slug>"
  echo "       ./scripts/report.sh work/<slug>"
  exit 1
fi

[ -d "$ROOT/$TARGET" ] || { echo "Project not found: $TARGET"; exit 1; }
DIR="$ROOT/$TARGET"

echo "=== BOOK REVENUE ENGINE REPORT ==="
echo "Project: $TARGET"

if [ -f "$DIR/project.json" ]; then
  echo
  cat "$DIR/project.json"
fi

echo
for section in research competitors gaps outline manuscript fact-check metadata products marketing launch metrics; do
  if [ -d "$DIR/$section" ]; then
    count=$(find "$DIR/$section" -type f 2>/dev/null | wc -l | tr -d ' ')
    printf '%-16s %s file(s)\n' "$section:" "$count"
  fi
done

echo
if [ -f "$DIR/manuscript/book.md" ]; then
  words=$(wc -w < "$DIR/manuscript/book.md" | tr -d ' ')
  echo "Manuscript words: $words"
fi

echo "Startup cost policy: $0"
echo "Human approval: required before publication"
