#!/usr/bin/env bash
set -euo pipefail

REPO="blue-1ms/grounded-ui"
REF="${GROUNDED_UI_REF:-main}"
SKILL_NAME="grounded-ui"
DEST_ROOT="${CODEX_HOME:-$HOME/.codex}/skills"
DEST="$DEST_ROOT/$SKILL_NAME"
RAW_BASE="https://raw.githubusercontent.com/$REPO/$REF"

if ! command -v curl >/dev/null 2>&1; then
  echo "curl is required to install Grounded UI." >&2
  exit 1
fi

mkdir -p "$DEST/agents"

curl -fsSL "$RAW_BASE/SKILL.md" -o "$DEST/SKILL.md"
curl -fsSL "$RAW_BASE/agents/openai.yaml" -o "$DEST/agents/openai.yaml"

cat <<EOF
Grounded UI installed to:
  $DEST

Restart Codex to pick up the new skill.

Try:
  Use \$grounded-ui to redesign this dashboard.
EOF
