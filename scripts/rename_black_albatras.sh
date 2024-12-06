
#!/bin/bash

# Root directory where the files are located
root_dir="."

# Loop through all files in the directory and its subdirectories
find "$root_dir" -type f | while read -r file; do
  # Check if the filename contains 'Black_Footed_Albatross_'
  if [[ "$(basename "$file")" == *"Black_Footed_Albatross_"* ]]; then
    # Get the new filename by removing 'Black_Footed_Albatross_' from the basename
    new_name=$(basename "$file" | sed 's/Black_Footed_Albatross_//')

    # Rename the file
    mv "$file" "$(dirname "$file")/$new_name"

    # Print a message
    echo "Renamed: $file -> $(dirname "$file")/$new_name"
  fi
done

