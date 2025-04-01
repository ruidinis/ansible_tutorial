#!/bin/bash

# Check if a commit message is provided
if [ -z "$1" ] && [ -z "$2" ]; then
    echo "Usage: $0 \"Your commit message and origin is missing\""
    exit 1
fi
if [ -z "$1" ]; then
    echo "Usage: $0 \"Your commit message is missing\""
    exit 1
fi
if [ -z "$2" ]; then
    echo "Usage: $0 \"Your origin is missing\""
    exit 1
fi


COMMIT_MSG="$1"

# Add all changes
git add .

# Commit changes
git commit -m "$COMMIT_MSG"

ORIGIN="$2"

# Push
git push origin "$ORIGIN"

echo "Changes successfully pushed to the repository."

