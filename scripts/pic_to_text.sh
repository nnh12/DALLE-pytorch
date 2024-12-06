#!/bin/bash

# Root directory containing subdirectories
root_dir="."

# Loop through all the subdirectories
find "$root_dir" -type d | while read -r dir; do
  # Loop through all the image files in each subdirectory
  for image in "$dir"/*; do
    # Check if it's a regular file and if it has an image extension (e.g., jpg, png, etc.)
    if [[ -f "$image" && "$image" =~ \.(jpg|jpeg|png|gif|bmp|tiff|webp)$ ]]; then
      # Get the base name of the image (without directory path and extension)
      base_name=$(basename "$image" | sed 's/\.[^.]*$//')

      # Create a text file with the same name as the image in the same directory
      touch "$dir/$base_name.txt"
      echo "Created text file for $base_name in directory $dir"
    fi
  done
done

