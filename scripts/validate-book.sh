#!/usr/bin/env bash
set -euo pipefail

ROOT=${1:-.}
ERRORS=0

check() {
  if [ -f "$ROOT/$1" ]; then echo "OK  $1"; else echo "MISS $1"; ERRORS=$((ERRORS+1)); fi
}

check README.md
check config/settings.json
check templates/topic-report.md
check templates/book-outline.md
check templates/quality-check.md
check templates/launch-checklist.md

if [ -d "$ROOT/prompts" ]; then
  COUNT=$(find "$ROOT/prompts" -type f -name '*.md' | wc -l)
  echo "OK  prompts: $COUNT files"
else
  echo "MISS prompts directory"; ERRORS=$((ERRORS+1))
fi

if [ "$ERRORS" -gt 0 ]; then
  echo "Validation failed: $ERRORS issue(s)."
  exit 1
fi

echo "Validation passed."
