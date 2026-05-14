#!/bin/bash

echo "Which branch type would you like to create?"
echo "1) Feature (Development of new functions)"
echo "2) Release (Preparation for production / versioning)"
echo "3) Hotfix  (Urgent bugfix for production)"
read -p "Choice [1-3]: " choice

case $choice in
    1)
        read -p "Feature name (e.g., login-page): " name
        git checkout develop
        git pull origin develop 2>/dev/null || echo "NOTE: Local develop branch is ready."
        git checkout -b "feature/$name"
        echo "🚀 Feature branch 'feature/$name' created from 'develop'."
        ;;
    2)
        read -p "Version number (e.g., v1.0.1): " version
        git checkout develop
        git pull origin develop 2>/dev/null
        git checkout -b "release/$version"
        echo "📦 Release branch 'release/$version' created from 'develop'."
        ;;
    3)
        read -p "Hotfix name (e.g., typo-fix): " fix
        git checkout main
        git pull origin main 2>/dev/null
        git checkout -b "hotfix/$fix"
        echo "🛠️ Hotfix branch 'hotfix/$fix' created from 'main'."
        ;;
    *)
        echo "❌ Invalid choice."
        exit 1
        ;;
esac