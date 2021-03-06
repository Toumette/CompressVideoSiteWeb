# CompressVideoSiteWeb

### Compresser une vidéo MP4 et la transcoder en FLV, sous Windows, pour la placer sur un site SPIP de collège

* D'abord installer la dernière version du pack **"ffmpeg"** dans le répertoire appelé **"programmes"** (voir ci-dessous). L'outil doit pouvoir accéder à l'exécutable "ffmpeg.exe" par cette arborescence : **\ racine_de_l_outil \ Programmes \ bin \ ffmpeg.exe**.

* A la fin du traitement, des informations sont données sur le fichier d'entrée et sur le fichier de sortie.

* Une fois l'outil installé et testé, le fichier **"MarcheAsuivre"** permet au gestionnaire du site de l'établissement de réaliser l'opération (fichier utilisant la syntaxe Markdown).

Le répertoire de l'outil doit être organisé de la façon suivante :

    \racine_de_l_outil=>|répertoire TRAITEMENT======>|-COMPRESSER.bat (l'outil proprement dit)
                        |-README.md (ce fichier)     |-in.mp4 (fichier lu par l'outil)
                        |-MarcheAsuivre.md (doc)     |-out.flv (fichier généré par l'outil après traitement)
                        |
                        |Répertoire Programmes======>|bin==>|ffmpeg.exe (à installer, utilisé par l'outil)

* Testé sous Windows Seven Edition familiale premium sur PC 64bits.

* Site de collège sous CMS SPIP de l'académie de Rennes.

---
_Ce script, volontairement "sur-commenté", s'adresse aux débutants en scripting BAT._

_© Henri 13/12/19 - Plus d'informations : https://henri.nitnoc.me_
