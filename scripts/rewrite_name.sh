#!/bin/bash

# Root directory (can be set to any directory you want to start from)
root_dir="."

# Loop through all text files in the directory and its subdirectories
find "$root_dir" -type f -name "*.txt" | while read -r file; do
  # Check if the file exists and is a regular file
  if [[ -f "$file" ]]; then
    # Clear the contents of the file (overwrite with nothing)
    > "$file"
    
    # Get the filename without the path and remove the .txt extension
    file_name=$(basename "$file" .txt)
    
    # Write the filename (without .txt) into the text file
    echo "$file_name" > "$file"
    
    # Print a message indicating the file was updated
    echo "Updated: $file with filename '$file_name'"
  fi
done

