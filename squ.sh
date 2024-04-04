#!/bin/bash

# Define the name of the file branch

# Step 1: Create and switch to a new branch
git checkout -b "$new_branch"

# Step 2: Make changes and commit them on the file branch
echo "First file commit" >> file.txt
git add file.txt
git commit -m "First file commit"

echo "Second file commit" >> file.txt
git add file.txt
git commit -m "Second file commit"

# Step 3: Switch back to the main branch
git checkout main

# Step 4: Make sure the main branch is up to date
git pull origin main

# Step 5: Perform the squash merge
git merge --squash "$new_branch"

# Step 6: Commit the squashed changes
git commit -m "Squashed file commits"

# Step 7: Display confirmation message
echo "Squash merge completed."

# Optional: You can push the changes to remote if needed
# git push origin main


# ./create-commit.sh
#git log --oneline
#git push origin squ
#git rebase -i hash
#git log --oneline
#git push origin squ -f