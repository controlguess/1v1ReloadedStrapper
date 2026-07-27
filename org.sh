#!/bin/bash

shopt -s nullglob

for file in *; do
    [[ -f "$file" ]] || continue

    [[ "$file" == *\\* ]] || continue

    newpath="${file//\\//}"

    mkdir -p "$(dirname "$newpath")"

    mv -- "$file" "$newpath"

    echo "Moved: $file -> $newpath"
done

echo "Done organizing, you can safely delete this file now."
