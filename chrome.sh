#!/bin/bash
set -e

GLOBAL_XDG="/etc/xdg"
MIME_FILE="$GLOBAL_XDG/mimeapps.list"

mkdir -p "$GLOBAL_XDG"

cat > "$MIME_FILE" <<EOF
[Default Applications]
text/html=google-chrome.desktop
application/xhtml+xml=google-chrome.desktop
x-scheme-handler/http=google-chrome.desktop
x-scheme-handler/https=google-chrome.desktop
EOF

echo "Google Chrome défini comme navigateur par défaut pour tous les utilisateurs ✔"