#!/bin/bash
set -e

GLOBAL_XDG="/etc/xdg"
MIME_FILE="$GLOBAL_XDG/mimeapps.list"
DESKTOP_FILE="vlc.desktop"

mkdir -p "$GLOBAL_XDG"

cat > "$MIME_FILE" <<EOF
[Default Applications]
video/mp4=$DESKTOP_FILE
video/x-matroska=$DESKTOP_FILE
video/x-msvideo=$DESKTOP_FILE
video/x-ms-wmv=$DESKTOP_FILE
video/mpeg=$DESKTOP_FILE
video/quicktime=$DESKTOP_FILE
video/webm=$DESKTOP_FILE

audio/mpeg=$DESKTOP_FILE
audio/mp3=$DESKTOP_FILE
audio/aac=$DESKTOP_FILE
audio/ogg=$DESKTOP_FILE
audio/x-wav=$DESKTOP_FILE
audio/flac=$DESKTOP_FILE
EOF

echo "VLC défini par défaut pour l'audio et la vidéo ✔"
