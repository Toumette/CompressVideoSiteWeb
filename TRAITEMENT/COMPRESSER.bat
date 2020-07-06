@echo off

TITLE "TRAITEMENT DE LA VIDEO POUR LE SITE SPIP DU COLLEGE © Henri"

REM ****************************************************************************
REM Plus d'informations sur : https://henri.nitnoc.me
REM Dernière version de l'outil et de sa documentation à télécharger sur :
REM https://github.com/toumette => rubrique : CompressVideoSiteWeb
REM © Henri
REM ****************************************************************************

echo.
echo ****************************************************************************
echo *               DEBUT DU TRAITEMENT - VEUILLEZ PATIENTER...                *
echo ****************************************************************************

REM bip de début de traitement :
echo 
REM NB : le bip correspond au caractère ASCII 7 passé en argument à echo
REM il peut être inséré sous Windows par la combinaison Alt007

REM ----------------------------------------------------------------------------
REM tempo 3 secondes (inutilisée)
REM TIMEOUT /T 3 /NOBREAK

REM ----------------------------------------------------------------------------
REM OPTIONS DE ffmpeg UTILISEES ICI :
REM nom fich entrée  : in.mp4: -i in.mp4
REM format conteneur : flv   : =extens fich sortie "out.flv" => nécessaire pour site/SPIP...
REM codec vidéo      : h.264 : -c:v libx264
REM codec audio      : AAC   : -c:a aac
REM format video     : hXv   : -s 640X360

REM CONVERSION DE in.mp4 en out.flv
REM pour mise sur site WEB/SPIP du Collège JB de films
REM NB : si problème de conversion :
REM mesurer la définition originale ex. 1920X 1080
REM la réduire en 640 X (valeur à calculer pour conserver le même rapport H/V)
REM par exemple 1,7777777777 soit 640X360
REM ----------------------------------------------------------------------------

REM décommenter pour faire un test rapide sur 30s de la vidéo :
REM ..\Programmes\bin\ffmpeg -ss 60 -t 30 -i in.mp4 -c:v libx264 -c:a aac -s 640x360 out.flv

REM si test OK :
REM décommenter pour traiter entièrement la vidéo :
..\Programmes\bin\ffmpeg -i in.mp4 -c:v libx264 -c:a aac -s 640x360 out.flv

echo.
echo ----------------------- INFOS SUR LE FICHIER ENTREE -----------------------
echo.
..\Programmes\bin\ffmpeg -i in.mp4
echo.

echo ----------------------- INFOS SUR LE FICHIER SORTIE -----------------------
echo.
..\Programmes\bin\ffmpeg -i out.flv

echo.
echo ****************************************************************************
echo *   TRAITEMENT TERMINE - LE FICHIER GENERE S'APPELLE : out.flv             *
echo *   APPUYER SUR N'IMPORTE QUELLE TOUCHE POUR QUITTER                       *
echo ****************************************************************************

REM 3 bips de fin de traitement :
echo  & echo  & echo 

REM la commande "pause" permet d'attendre l'action sur une touche quelconque pour fermer la fenêtre et
REM le ">nul" évite l'affichage automatique de "Appuyez sur une touche pour continuer" car on a déjà
REM affiché le message ci-dessus
pause >nul
