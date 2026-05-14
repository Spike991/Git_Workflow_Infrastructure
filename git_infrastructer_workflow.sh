#!/bin/bash

# 1. Initialize repository (if not already initialized)
git init

# 2. Ensure main branch and make the first commit (required for branching)
git checkout -b main
touch README.md
git add README.md
git commit -m "Initial commit: Setup main branch"

# 3. Create develop branch (where the actual work happens)
git checkout -b develop
git commit --allow-empty -m "Initial commit: Setup develop branch"

# 4. Link remote (if a URL was provided as an argument)
if [ -n "$1" ]; then
    git remote add origin "$1"
    echo "✅ Remote 'origin' added with URL: $1"
fi

echo "------------------------------------------------"
echo "🚀 Git structure is ready!"
echo "Main:    For stable production-ready code"
echo "Develop: Where all features come together"
echo "------------------------------------------------"
echo "Tips for your workflow:"
echo "Start Feature: git checkout -b feature/new-feature-name develop"
echo "Start Release: git checkout -b release/v1.0.0 develop"
echo "Start Hotfix:  git checkout -b hotfix/bugfix-name main"