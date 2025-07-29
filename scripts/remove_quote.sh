#!/bin/bash

# Loop through each file in the current directory
for filename in *; do
    # Remove spaces and single quotation marks from the filename
    updated_filename="${filename// /}"
    updated_filename="${updated_filename//\'/}"
    
    # Rename the file if the filename has changed
    if [[ "$filename" != "$updated_filename" ]]; then
        mv "$filename" "$updated_filename"
        echo "Renamed '$filename' to '$updated_filename'"
    fi
done

