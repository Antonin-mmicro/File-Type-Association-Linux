#!/bin/bash
set -e

GLOBAL_XDG="/etc/xdg"
MIME_FILE="$GLOBAL_XDG/mimeapps.list"

# Crée le dossier si nécessaire
mkdir -p "$GLOBAL_XDG"

# Définir toutes les applications par défaut dans un seul fichier
cat > "$MIME_FILE" <<EOF
[Default Applications]
# Navigateurs
text/html=firefox.desktop
application/xhtml+xml=firefox.desktop
x-scheme-handler/http=firefox.desktop
x-scheme-handler/https=firefox.desktop

# Documents Office
application/vnd.openxmlformats-officedocument.wordprocessingml.document=onlyoffice-desktopeditors.desktop
application/vnd.openxmlformats-officedocument.spreadsheetml.sheet=onlyoffice-desktopeditors.desktop
application/vnd.openxmlformats-officedocument.presentationml.presentation=onlyoffice-desktopeditors.desktop
application/msword=onlyoffice-desktopeditors.desktop
application/vnd.ms-excel=onlyoffice-desktopeditors.desktop
application/vnd.ms-powerpoint=onlyoffice-desktopeditors.desktop
application/vnd.oasis.opendocument.text=onlyoffice-desktopeditors.desktop
application/vnd.oasis.opendocument.spreadsheet=onlyoffice-desktopeditors.desktop
application/vnd.oasis.opendocument.presentation=onlyoffice-desktopeditors.desktop

# Audio et Vidéo
video/mp4=vlc.desktop
video/x-matroska=vlc.desktop
video/x-msvideo=vlc.desktop
video/x-ms-wmv=vlc.desktop
video/mpeg=vlc.desktop
video/quicktime=vlc.desktop
video/webm=vlc.desktop

audio/mpeg=vlc.desktop
audio/mp3=vlc.desktop
audio/aac=vlc.desktop
audio/ogg=vlc.desktop
audio/x-wav=vlc.desktop
audio/flac=vlc.desktop
EOF

echo "Applications par défaut définies : Firefox, ONLYOFFICE et VLC ✔"
