#!/usr/bin/env bash
set -euo pipefail

ROOT="$(cd "$(dirname "$0")/.." && pwd)"
ERRORS=0

check_dir() {
  if [ ! -d "$1" ]; then
    echo "ERROR: missing directory: $1"
    ERRORS=$((ERRORS+1))
  fi
}

check_dir "$ROOT/projects"
check_dir "$ROOT/prompts"
check_dir "$ROOT/templates"
check_dir "$ROOT/docs"

if [ ! -f "$ROOT/config/settings.json" ]; then
  echo "ERROR: missing config/settings.json"
  ERRORS=$((ERRORS+1))
fi

if [ "$ERRORS" -ne 0 ]; then
  echo "Validation failed with $ERRORS error(s)."
  exit 1
fi

echo "Book Revenue Engine structure: OK"
echo "Startup-cost policy: $0"
echo "Publication gate: human approval required"
