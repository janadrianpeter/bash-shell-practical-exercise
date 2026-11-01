#!/bin/bash

DOWNLOAD_DIR="$HOME/Downloads"

cd "$DOWNLOAD_DIR" || exit

for zip_file in *.zip; do 
	[ -e "$zip_file" ] || continue
	
	ordner_name="${zip_file%.zip}"
	echo "Entpacke: $zip_file -> Ordner: $ordner_name"

	mkdir -p "$ordner_name#"
	unzip -q "$zip_file" -d "$ordner_name"
	
	rm "$zip_file"
	echo"delet: $zip_file"
done

echo "ready!"
