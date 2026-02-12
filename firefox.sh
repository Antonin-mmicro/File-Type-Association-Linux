#!/bin/bash
set -e

GLOBAL_XDG="/etc/xdg"
MIME_FILE="$GLOBAL_XDG/mimeapps.list"

mkdir -p "$GLOBAL_XDG"

cat > "$MIME_FILE" <<EOF
[Default Applications]
text/html=firefox.desktop
application/xhtml+xml=firefox.desktop
x-scheme-handler/http=firefox.desktop
x-scheme-handler/https=firefox.desktop
EOF

<<<<<<< HEAD
echo "Firefox défini par défaut pour tous les utilisateurs ✔"
=======
echo "Firefox défini par défaut pour tous les utilisateurs ✔"
>>>>>>> 2e5d248 (Modif all)
