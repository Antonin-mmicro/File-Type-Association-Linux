#!/bin/bash
set -e

GLOBAL_XDG="/etc/xdg"
MIME_FILE="$GLOBAL_XDG/mimeapps.list"
DESKTOP_FILE="onlyoffice-desktopeditors.desktop"

mkdir -p "$GLOBAL_XDG"

cat > "$MIME_FILE" <<EOF
[Default Applications]
application/vnd.openxmlformats-officedocument.wordprocessingml.document=$DESKTOP_FILE
application/vnd.openxmlformats-officedocument.spreadsheetml.sheet=$DESKTOP_FILE
application/vnd.openxmlformats-officedocument.presentationml.presentation=$DESKTOP_FILE
application/msword=$DESKTOP_FILE
application/vnd.ms-excel=$DESKTOP_FILE
application/vnd.ms-powerpoint=$DESKTOP_FILE
application/vnd.oasis.opendocument.text=$DESKTOP_FILE
application/vnd.oasis.opendocument.spreadsheet=$DESKTOP_FILE
application/vnd.oasis.opendocument.presentation=$DESKTOP_FILE
EOF

echo "ONLYOFFICE défini par défaut pour les documents Office ✔"
