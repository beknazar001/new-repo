#!/bin/bash

# Define the name of the new branch
new_branch=$1





# Create 5 files and make some changes to them
touch "file-$new_branch.txt"
# git checkout -b "$new_branch" main
git checkout  "$new_branch" 
for i in {1..10}
do
    
    echo "This is file $i" >> "file.txt"
    # Stage all changes
    git add .
    # Commit the changes with a timestamp
    commit_message="Changes made $i at $(date)"
    git commit -m "$commit_message"
done


# Push the changes to the new branch
# git push origin "$new_branch"
echo "Changes committed and pushed to branch '$new_branch'"
