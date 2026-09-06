#!/usr/bin/env bash
set -Eeuo pipefail

test -s README.md
test -s blueprint/BLUEPRINT.json

jq empty blueprint/BLUEPRINT.json

grep -q "LAB" README.md

echo "✅ Prototype validation PASS"
