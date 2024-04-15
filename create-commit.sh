#!/bin/bash
for i in {1..3}
do
    
    echo "This is file $i" >> "file-s1.txt"
    # Stage all changes
    git add .
    # Commit the changes with a timestamp
    commit_message="Changes made $i at $(date)"
    git commit -m "$commit_message"
done



