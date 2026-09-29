#!/usr/bin/env bash
set -euo pipefail

ROOT="$(cd "$(dirname "$0")/.." && pwd)"
PROJECTS="$ROOT/projects"

printf '\nBook Revenue Engine — New Project\n\n'
read -r -p 'Project name: ' NAME
read -r -p 'Target audience: ' AUDIENCE
read -r -p 'Primary problem/outcome: ' OUTCOME

SLUG=$(printf '%s' "$NAME" | tr '[:upper:]' '[:lower:]' | sed 's/[^a-z0-9]/-/g; s/-\+/-/g; s/^-//; s/-$//')
[ -n "$SLUG" ] || { echo 'Invalid project name.'; exit 1; }

DIR="$PROJECTS/$SLUG"
if [ -e "$DIR" ]; then
  echo "Project already exists: $DIR"
  exit 1
fi

mkdir -p "$DIR"/{research,competitors,gaps,outline,manuscript,fact-check,metadata,products,marketing,launch,metrics}

cat > "$DIR/project.json" <<EOF
{
  "name": "$(printf '%s' "$NAME" | sed 's/"/\\"/g')",
  "slug": "$SLUG",
  "audience": "$(printf '%s' "$AUDIENCE" | sed 's/"/\\"/g')",
  "primary_outcome": "$(printf '%s' "$OUTCOME" | sed 's/"/\\"/g')",
  "status": "idea",
  "startup_cost_usd": 0,
  "human_approval_required": true,
  "created_at": "$(date -u +%Y-%m-%dT%H:%M:%SZ)"
}
EOF

cat > "$DIR/README.md" <<EOF
# $NAME

**Audience:** $AUDIENCE  
**Primary outcome:** $OUTCOME  
**Status:** idea  
**Startup cost:** \$0

## Next actions

1. Research demand.
2. Record sources and dates.
3. Analyze competitors and reader complaints.
4. Identify the gap.
5. Decide whether evidence justifies production.
EOF

echo
printf 'Created: %s\n' "$DIR"
printf 'Next: research demand before drafting.\n'
