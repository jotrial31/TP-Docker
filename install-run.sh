#!/bin/bash

echo -e "\033[0;31mInstallateur application python\033[0m"
echo -e -n "\n\033[1;31m1 * commencer l'installation\n2 * Quitter: \033[0m"; read -n 2 choix
if [[ $choix = 2 ]]
then
	echo -e "\nLe programme s'est arrété."
	exit
else
	docker-compose -f yml/docker-compose.yml up -d
fi


while true
do
	echo -e -n "\n\033[1;32mVoulez vous lancer l'application?: (OUI/NON) \033[0m"; read -n 4 choix2
	case $choix2 in
		[nN][oO][nN] | [nN])
			echo -e "\n\033[1;34mL'installation est finie.\033[0m"
			exit
			;;
		[oO][uU][iI] | [oO])
			echo -e "\n\033[1;34mlancement de l'apllication\033[0m"
			docker exec -i python python3 main.py
			break
			;;
		*)
			echo -e "\n\033[1;34mChoix incorrect\033[0m"
	esac
done
