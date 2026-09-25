#!/usr/bin/env bash
set -euo pipefail

slugify() { echo "$1" | tr '[:upper:]' '[:lower:]' | sed 's/[^a-z0-9][^a-z0-9]*/-/g; s/^-//; s/-$//'; }

printf '\n=== BOOK REVENUE ENGINE ===\n'
read -r -p 'Topic: ' TOPIC
read -r -p 'Target reader: ' AUDIENCE
read -r -p 'Primary outcome: ' OUTCOME
read -r -p 'Mode (research|outline|book|full): ' MODE
MODE=${MODE:-full}
SLUG=$(slugify "$TOPIC")
DATE=$(date -u +%Y-%m-%d)
DIR="work/$SLUG"
mkdir -p "$DIR"

cat > "$DIR/project.json" <<EOF
{
  "topic": "$TOPIC",
  "audience": "$AUDIENCE",
  "outcome": "$OUTCOME",
  "mode": "$MODE",
  "created": "$DATE",
  "startup_cost_usd": 0,
  "status": "research"
}
EOF

cp templates/topic-report.md "$DIR/topic-report.md"
cp templates/book-outline.md "$DIR/book-outline.md"
cp templates/quality-check.md "$DIR/quality-check.md"
cp templates/launch-checklist.md "$DIR/launch-checklist.md"

cat > "$DIR/README.md" <<EOF
# $TOPIC

Audience: $AUDIENCE

Outcome: $OUTCOME

Created: $DATE

Mode: $MODE

Start with **topic-report.md**. Do not draft the full book until demand and differentiation are documented.
EOF

echo
printf 'Workspace created: %s\n' "$DIR"
printf 'Next: fill topic-report.md, then run validation.\n\n'
