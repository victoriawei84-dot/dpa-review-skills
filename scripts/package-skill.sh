#!/usr/bin/env bash
# Packages this repo's SKILL.md + reference/ + examples/ into a properly-named
# skill folder and zips it, ready to upload to Claude.ai / the Claude API, or
# to drop into Claude Code's / Codex CLI's skills directory.
#
# Usage: ./scripts/package-skill.sh [output-dir]
set -euo pipefail

REPO_ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
SKILL_NAME="dpa-checklist-review"
OUT_DIR="${1:-$REPO_ROOT/dist}"
STAGE_DIR="$(mktemp -d)/$SKILL_NAME"

mkdir -p "$STAGE_DIR" "$OUT_DIR"
cp "$REPO_ROOT/SKILL.md" "$STAGE_DIR/"
cp -R "$REPO_ROOT/reference" "$STAGE_DIR/"
cp -R "$REPO_ROOT/examples" "$STAGE_DIR/"

rm -f "$OUT_DIR/$SKILL_NAME.zip"
(cd "$(dirname "$STAGE_DIR")" && zip -rq "$OUT_DIR/$SKILL_NAME.zip" "$SKILL_NAME")
rm -rf "$(dirname "$STAGE_DIR")"

echo "Packaged: $OUT_DIR/$SKILL_NAME.zip"
echo "Upload this zip to Claude.ai (Settings > Capabilities > Skills), or"
echo "unzip it into ~/.claude/skills/ (Claude Code) / .agents/skills/ (Codex CLI)."
