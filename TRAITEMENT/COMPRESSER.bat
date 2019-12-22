@echo off

TITLE "TRAITEMENT DE LA VIDEO POUR LE SITE SPIP DU COLLEGE © Henri"

echo.
echo ****************************************************************************
echo *                    DEBUT DU TRAITEMENT - PATIENTER                       *
echo ****************************************************************************

REM bip de début de traitement :
echo 
REM NB : le bip correspond au caractère ASCII 7 passé en argument à echo
REM il peut être inséré sous Windows par la combinaison Alt007

REM ----------------------------------------------------------------------------
REM OPTIONS DE ffmpeg UTILISEES ICI :
REM format conteneur : flv    (=extension de sortie) => nécessaire pour site/SPIP...
REM codec vidéo      : h.264 -c:v libx264
REM codec audio      : AAC   -c:a libvo_aacenc
REM format video     : -s 640X360

REM CONVERSION DE in.mp4 en out.flv
REM pour mise sur site WEB/SPIP du Collège de films
REM ----------------------------------------------------------------------------

REM décommenter pour faire un test rapide sur 30s de la vidéo :
REM ..\Programmes\bin\ffmpeg -ss 60 -t 30 -i in.mp4 -c:v libx264 -c:a libvo_aacenc -s 640x360 out.flv

REM si test OK :
REM décommenter pour traiter entièrement la vidéo :
..\Programmes\bin\ffmpeg -i in.mp4 -c:v libx264 -c:a libvo_aacenc -s 640x360 out.flv

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
echo *  TRAITEMENT TERMINE - APPUYER SUR N'IMPORTE QUELLE TOUCHE POUR QUITTER   *
echo ****************************************************************************

REM 3 bips de fin de traitement :
echo  & echo  & echo 

REM la commande "pause" permet d'attendre l'action sur une touche quelconque pour fermer la fenêtre et
REM le ">nul" évite l'affichage automatique de "Appuyez sur une touche pour continuer" car on a déjà
REM affiché le message ci-dessus
pause >nul
