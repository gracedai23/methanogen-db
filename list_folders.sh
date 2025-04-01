#!/bin/bash

# Loop through all subfolders in the current directory
for dir in */; do
    # Remove trailing slash and get the first 15 characters
    subfolder_name="${dir%/}"
    short_name="${subfolder_name:0:15}"

    # Print the shortened name
    echo "$short_name"
done

