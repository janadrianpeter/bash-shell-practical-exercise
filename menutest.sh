#!/bin/bash

echo "== WARTUNGS TOOL =="
echo "1) Sys aktualisieren"
echo "2) catch leeren"
echo "3) Speicher"
echo "4) Beenden"

read -p "eingabe der option" choice

case "$choice" in 

	1)
 		echo "starte sys-update..."

		;;
	2)	echo "leere Speicher"

		;;

	3)
		echo "aktueller Speicher"
		
		;;
	4)
		echo "STOP"

		;;
	*)
		echo "ERROR: $choice"
		;;

esac
