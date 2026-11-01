#!/bin/bash

SOURCE_DIR  ="$HOME/Downloads"
TARGET_BASE ="$HOME/fia"

cd "$SOURCE_DIR"  || exit 

	for item in *; do 
	[ -e "$item" ] || continue
	item_lower=$(echo "$item" | tr '[:upper]' '[:lower:]')

	target_folder=""

	case "$item_lower" in
		*java* | *jar*)
			target_folder="Java"
			;;
		*)
			target_folder="rest"
			;;
	esac

	mkdir -p "$TARGET_BASE/$target_folder"
	mv "$item" "$TARGET_BASE/$target_folder"

done

echo"ready"
