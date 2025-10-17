#!/usr/bin/env bash
set -euo pipefail
if [ -z "${1-}" ]; then
  echo "Usage: ./init_git_and_push.sh <GITHUB_REPO_URL>"
  exit 1
fi
REPO_URL="$1"
git init
git add .
git commit -m "Initial commit: BY Flask Starter"
git branch -M main
git remote add origin "$REPO_URL"
git push -u origin main
echo "Pushed to $REPO_URL"
