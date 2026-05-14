#!/bin/bash

# 1. Switch to your main branch
git checkout main

# 2. Update your local list of branches from the server
git fetch -p

# 3. List merged branches, filter out 'main' and 'master', then delete them
# Change 'main' if your primary branch is named something else
git branch --merged | grep -v "\*" | grep -v "main" | grep -v "master" | xargs -n 1 git branch -d