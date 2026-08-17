#!/bin/bash

# Banniere
cat <<"EOF"

_______________________________________________
7     77     77      77  77     77     77     7
|  _  ||  ___!!__  __!|  ||  _  ||  ___!|  7  |
|  7  ||  __|_  7  7  |  ||  7  ||  __| |  |  |
|  |  ||     7  |  |  |  ||  |  ||  7   |  !  |
!__!__!!_____!  !__!  !__!!__!__!!__!   !_____!
                                                                                       
by M0rPH3U53
      
EOF

# Couleur ASSCI
BLEU='\033[34m'
ROUGE='\033[0;31m'
VERT='\033[0;32m'
GRIS='\033[0;90m'
RESET='\033[0m'
BLANC='\033[1;37m'
JAUNE='\033[0;33m'

# Nom d'hote
hostename=$(hostname)

# Interfaces réseau
interfaces=$(ip route | grep -v default | awk '{print $3 " --> " $1}')

# Broadcast
broadcast=$(ifconfig | grep inet | grep -Ev  "inet6|127.0.0.1" | awk '{print $2 " --> " $6}')

# Ports ouvert
ports=$(ss -lpnH -4 2>/dev/null | awk '{print $5 " --> " $7}')

# IP machine
IP_hote=$(hostname -I | xargs -n1)

# Serveur DNS
dns_serveur=$(cat /etc/resolv.conf | grep -v "#" | awk '{print $2}')

# Passerelle par defaut
gateway_ip=$(ip route show default | awk '{print $3}')

# Affiche les infos réseaux
echo "${BLEU}[*]${RESET} ${BLANC}Hostname ${RESET} "
echo " "
echo "${hostename}"
echo " "
echo "${BLEU}[*]${RESET} ${BLANC}Interfaces ${RESET} "
echo " "
echo "${interfaces}"
echo " "
echo "${BLEU}[*]${RESET} ${BLANC}Broadcast ${RESET} "
echo " "
echo "${broadcast}"
echo " "
echo "${BLEU}[*]${RESET} ${BLANC}Ports ${RESET} "
echo " "
echo "${ports}"
echo " "
echo "${BLEU}[*]${RESET} ${BLANC}IP ${RESET} "
echo " "
echo "${IP_hote}"
echo " "
echo "${BLEU}[*]${RESET} ${BLANC}DNS ${RESET} "
echo " "
echo "${dns_serveur}"
echo " "
echo "${BLEU}[*]${RESET} ${BLANC}Passerelle ${RESET} "
echo " "
echo "${gateway_ip}"
echo " "
