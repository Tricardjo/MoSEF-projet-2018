#!/bin/bash
JOUR=$(date +%d)
MOIS=$(date +%B)
ANNEE=$(date +%Y)
read -p "Comment t'appelles-tu? " NOM
echo "Bonjour $NOM, bienvenu sur mon projet, nous somme le $JOUR $MOIS $ANNEE et tu es connecté depuis ton compte $USERNAME."
read -p "Quel répertoire t'intéresse camarade? " REP
echo "J'espère que tu as bien fait attention aux consignes du README en écrivant le répertoire $REP.i"
cd $REP
find -type f -mtime -7
