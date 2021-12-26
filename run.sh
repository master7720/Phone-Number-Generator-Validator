#!/bin/bash

echo -e '\e[95m\n▒███████▒▓█████  ██▀███   ▒█████    ▄████ ▓█████  ███▄    █ \n▒ ▒ ▒ ▄▀░▓█   ▀ ▓██ ▒ ██▒▒██▒  ██▒ ██▒ ▀█▒▓█   ▀  ██ ▀█   █ \n░ ▒ ▄▀▒░ ▒███   ▓██ ░▄█ ▒▒██░  ██▒▒██░▄▄▄░▒███   ▓██  ▀█ ██▒\n  ▄▀▒   ░▒▓█  ▄ ▒██▀▀█▄  ▒██   ██░░▓█  ██▓▒▓█  ▄ ▓██▒  ▐▌██▒\n▒███████▒░▒████▒░██▓ ▒██▒░ ████▓▒░░▒▓███▀▒░▒████▒▒██░   ▓██░\n░▒▒ ▓░▒░▒░░ ▒░ ░░ ▒▓ ░▒▓░░ ▒░▒░▒░  ░▒   ▒ ░░ ▒░ ░░ ▒░   ▒ ▒ \n░░▒ ▒ ░ ▒ ░ ░  ░  ░▒ ░ ▒░  ░ ▒ ▒░   ░   ░  ░ ░  ░░ ░░   ░ ▒░\n░ ░ ░ ░ ░   ░     ░░   ░ ░ ░ ░ ▒  ░ ░   ░    ░      ░   ░ ░ \n  ░ ░       ░  ░   ░         ░ ░        ░    ░  ░         ░ \n░\n\n\e[39m\e[92m\n ㋡ Fastest Valid USA Number Phone Generator!\n> Creator : Soul Kings\n> Telegram : @soul_kings\n> Version : 1.0 [FREE]\n> Join our telegram channel : @raid_store\n> You can recheck with my usa phone number validator.\n> Thanks you ;)\n\n\e[39m'

N='\033[0m'
LM='\e[95m'
LG='\e[93m'

echo -e "${LG} 1 Times = 1000 Generated USA Number Phone${N}${LM}"
read -p ' How many times do you want? ' total
echo -e "${N}${LG} Start Generating USA Number Phone For $total Times....${N}"
START=$(date +%s)
seq 1 $total | xargs -I $ -n1 -P25  curl -s "https://soulapizy.000webhostapp.com/phonegenerator/" >> result.txt
END=$(date +%s)
TIMES=$(( $END - $START ))
echo -e "${LG} Total generated `cat result.txt | wc -l` phone number in $TIMES second.${N}\n"