@echo off

TITLE TRAITEMENT DE LA VIDEO POUR LE SITE SPIP DU COLLEGE  � Henri

echo.
echo ****************************************************************************
echo *                    DEBUT DU TRAITEMENT - PATIENTER                       *
echo ****************************************************************************

rem bip de d�but de traitement
echo 

rem ----------------------------------------------------------------------------
rem format conteneur : flv    (=extension de sortie) => pour SPIP...
rem codec vid�o      : h.264 -c:v libx264
rem codec audio      : AAC   -c:a libvo_aacenc
rem format video     : 640X360

rem CONVERSION DE in.mp4 en out.flv
rem pour mise sur site WEB/SPIP du Coll�ge de films
rem mesurer la d�finition originale ex. 1920X 1080
rem la r�duire en 640 X valeur � calculer pour conserver le m�me rapport H/V
rem par exemple 1,7777777777 soit 640X360
rem ----------------------------------------------------------------------------

rem pour test sur 30s :
..\Programmes\bin\ffmpeg  -ss 60 -t 30 -i in.mp4 -c:v libx264 -c:a libvo_aacenc -s 640x360 out.flv

rem traitement complet :
rem ..\Programmes\bin\ffmpeg               -i in.mp4 -c:v libx264 -c:a libvo_aacenc -s 640x360 out.flv


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

rem 3 bips de fin de traitement
echo  & echo  & echo 

pause >nul
