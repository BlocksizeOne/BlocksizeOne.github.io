#!/bin/bash

# Exit immediately if a command fails
set -e

# Stage all changes
git add .

# Commit with provided message or default
if [ -z "$1" ]; then
  COMMIT_MSG="Update: latest changes"
else
  COMMIT_MSG="$1"
fi

git commit -m "$COMMIT_MSG"

# Push to the current branch
CURRENT_BRANCH=$(git rev-parse --abbrev-ref HEAD)
git push origin "$CURRENT_BRANCH"

echo "✅ Changes pushed to branch '$CURRENT_BRANCH'."
