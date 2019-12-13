@echo off

TITLE TRAITEMENT DE LA VIDEO POUR LE SITE SPIP DU COLLEGE  © Henri

echo.
echo ****************************************************************************
echo *                    DEBUT DU TRAITEMENT - PATIENTER                       *
echo ****************************************************************************

rem bip de début de traitement :
echo 
rem NB : le bip correspond au caractère ASCII 7 passé en argument à echo
rem il peut être inséré sous Windows par la combinaison Alt007

rem ----------------------------------------------------------------------------
rem OPTIONS DE ffmpeg UTILISEES ICI :
rem format conteneur : flv    (=extension de sortie) => nécessaire pour site/SPIP...
rem codec vidéo      : h.264 -c:v libx264
rem codec audio      : AAC   -c:a libvo_aacenc
rem format video     : -s 640X360

rem CONVERSION DE in.mp4 en out.flv
rem pour mise sur site WEB/SPIP du Collège de films
rem ----------------------------------------------------------------------------

rem décommenter pour faire un test rapide sur 30s de la vidéo :
rem ..\Programmes\bin\ffmpeg  -ss 60 -t 30 -i in.mp4 -c:v libx264 -c:a libvo_aacenc -s 640x360 out.flv

rem si test OK :
rem décommenter pour traiter entièrement la vidéo :
..\Programmes\bin\ffmpeg                   -i in.mp4 -c:v libx264 -c:a libvo_aacenc -s 640x360 out.flv

echo.
echo ----------------------- INFOS SUR LE FICHIER ENTREE -----------------------
echo.
..\Programmes\bin\ffmpeg -i  in.mp4
echo.

echo ----------------------- INFOS SUR LE FICHIER SORTIE -----------------------
echo.
..\Programmes\bin\ffmpeg -i out.flv

echo.
echo ****************************************************************************
echo *  TRAITEMENT TERMINE - APPUYER SUR N'IMPORTE QUELLE TOUCHE POUR QUITTER   *
echo ****************************************************************************

rem 3 bips de fin de traitement :
echo  & echo  & echo 

pause >nul
