#!/bin/bash
set -e

GLOBAL_XDG="/etc/xdg"
MIME_FILE="$GLOBAL_XDG/mimeapps.list"
DESKTOP_FILE="okular.desktop"

mkdir -p "$GLOBAL_XDG"

cat > "$MIME_FILE" <<EOF
[Default Applications]
application/pdf=$DESKTOP_FILE
application/x-pdf=$DESKTOP_FILE
application/vnd.pdf=$DESKTOP_FILE
EOF

echo "Okular défini comme lecteur PDF par défaut pour tous les utilisateurs ✔"
