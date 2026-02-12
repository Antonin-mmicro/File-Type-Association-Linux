# Scripts de configuration des applications par défaut (Linux)

## Description

Ces scripts permettent de définir rapidement les applications par défaut pour différents types de fichiers et protocoles sur un système Linux.  
Ils modifient les associations globales pour tous les utilisateurs via le fichier `/etc/xdg/mimeapps.list`.

---

## Scripts inclus

### 1. Firefox par défaut
Configure Firefox comme navigateur par défaut pour les pages web et les protocoles HTTP/HTTPS.

### 2. ONLYOFFICE par défaut
Configure ONLYOFFICE Desktop Editors comme application par défaut pour les documents texte, tableurs et présentations.

### 3. VLC par défaut
Configure VLC Media Player comme application par défaut pour tous les fichiers audio et vidéo courants.

---

## Prérequis

- Linux avec un environnement graphique supportant XDG.
- Les applications (Firefox, ONLYOFFICE, VLC) doivent être installées et posséder leurs fichiers `.desktop`.
- Les scripts doivent être exécutés avec les droits administrateur pour appliquer les modifications globales.

---

## Installation et utilisation

1. Copier les scripts sur le système Linux.
2. Executer les 3 scripts en administrateur.
