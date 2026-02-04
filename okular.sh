#!/bin/bash
set -e

GLOBAL_XDG="/etc/xdg"
MIME_FILE="$GLOBAL_XDG/mimeapps.list"
DESKTOP_FILE="okular.desktop"

mkdir -p "$GLOBAL_XDG"

# Crée le fichier s'il n'existe pas
touch "$MIME_FILE"

# Fonction pour ajouter/mettre à jour une association
add_mime_association() {
    local mime="$1"
    local desktop="$2"

    # Si l'association existe déjà, la remplacer
    if grep -q "^$mime=" "$MIME_FILE"; then
        sed -i "s|^$mime=.*|$mime=$desktop|" "$MIME_FILE"
    else
        echo "$mime=$desktop" >> "$MIME_FILE"
    fi
}

# Ajouter les types PDF
add_mime_association "application/pdf" "$DESKTOP_FILE"
add_mime_association "application/x-pdf" "$DESKTOP_FILE"
add_mime_association "application/vnd.pdf" "$DESKTOP_FILE"

echo "Okular défini comme lecteur PDF par défaut pour tous les utilisateurs ✔"
