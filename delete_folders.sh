#!/bin/bash

# Define the parent directory (current directory in this case)
parent_directory="."

# Loop through all subdirectories in the parent directory
for subfolder in "$parent_directory"/*/; do
    # Check if it's a directory
    if [ -d "$subfolder" ]; then
        # Count the number of files in the subfolder (not including subdirectories)
        file_count=$(find "$subfolder" -maxdepth 1 -type f | wc -l)

        # If the folder is empty or contains only 1 file, delete it
        if [ "$file_count" -le 1 ]; then
            echo "Deleting folder: $subfolder"
            rm -rf "$subfolder"
        fi
    fi
done

echo "Empty or single-file subfolders deleted."

