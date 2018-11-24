# MoSEF-projet-2018

1- Dans un premier temps, j'ai cliqué sur FORK avec mon compte sur ton profil (ambalde).
2- Puis j'ai récupéré l'adresse https://github.com/Tricardjo/MoSEF-projet-2018.git pour cloner le projet.

git clone https://github.com/Tricardjo/MoSEF-projet-2018.git

3- J'ai créé un vim contenant les demandes précises formuler dans les consignes. 
Elle consiste à présenter l'individus et lui indiquer les fichiers contenus dans un chemin qu'il nous fournit.
Pour les exécuter, il faut utiliser la commande "bash" sur le fichier "fich_semaine_dernière.sh".
Le nom du fichier demandé doit être de la forme "/home/sorbonne/dossier_1", avec toute l'arborescence sans slash à la fin.

vim fich_semaine_dernière.sh
#/bin/bash
JOUR=$(date +%d)
MOIS=$(date +%B)
ANNEE=$(date +%Y)
read -p "Comment t'appelles-tu?" NOM
echo "Bonjour $NOM, bienvenu sur mon projet, nous sommes le $JOUR $MOIS $ANNEE et tu es connecté depuis ton compte $USERNAME."
read -p "Quel répertoire t'intéresse camarade? " REP 
echo "J'espère que tu as bien fait attention aux consignes du README en écrivant le répertoire $REP.i"

4- J'ai commit le fichier et je l'ai poussé sur le serveur distant.

git init
git add fich_semaine_dernière.sh
git commit - m "Ajout..."
git remote add origin master
git push -u origin master

5- Je crée alors une nouvelle branche.

git branch new

6- Ici, je suis allé dans la nouvelle branche, puis j'ai ajouté le contenu désiré à fich_semaine_dernière.sh.

git checkout new
vim fich_semaine_dernière.sh
cd $REP
find -type f -mtime -7

7- J'ai alors poussé les changements à distance.

git add fich_semaine_dernière.sh
git commit -m "Ajout..."
git push -u origin new

8- Après cette étape, on a alors rélisé une PULL REQUEST depuis le site github sur notre compte depuis new vers master.
Puis, merge la PULL REQUEST toujours depuis le site, pour fusionner les branches à distance.

9- On souhaite alors fusionner en local.

git checkout master 
git merge new

10- On va alors supprimer le vim Consignes.md et pousser les modifications sur github.

rm -rf fich_semaine_dernière.sh
git pull
git push




