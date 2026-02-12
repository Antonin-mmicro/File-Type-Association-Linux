# 📦 Scripts de Configuration des Applications par Défaut – Linux

## 📖 Description

Ce dépôt contient des scripts permettant de configurer automatiquement les applications par défaut pour différents types de fichiers et protocoles sur un système Linux.  

Ces scripts permettent de :  
- 🌐 Définir un navigateur web par défaut  
- 📝 Définir une suite bureautique ou un éditeur de documents par défaut  
- 🎵 Définir un lecteur multimédia par défaut  
- ✅ Appliquer les changements globalement pour tous les utilisateurs  
- 🔁 Assurer une exécution idempotente (ne modifie pas si déjà configuré)  

L’objectif est d’automatiser et de standardiser les configurations sur des postes Linux.

---

## 🛠 Fonctionnement général

La logique commune des scripts est la suivante :  
1. Vérification de l’application ciblée et de sa présence sur le système  
2. Modification des associations de fichiers et de protocoles via le fichier `/etc/xdg/mimeapps.list`  
3. Vérification post-configuration pour s’assurer que l’application est bien définie par défaut  
4. Affichage d’un statut clair dans la console  

---

## 💻 Prérequis

- Linux avec un environnement graphique supportant XDG  
- Les applications à configurer doivent être installées et posséder leurs fichiers `.desktop`  
- Droits administrateur pour appliquer les changements globalement  

---

## 🚀 Utilisation

### Exécution simple
sudo bash nom_du_script.sh

### Exécution multiple

Les scripts peuvent être lancés plusieurs fois sans risque grâce à l’exécution idempotente :  
- ✔ Si l’application est déjà définie par défaut → aucun changement  
- ✔ Sinon → modification automatique  

---

## 🔐 Sécurité

Les scripts :  
- Vérifient la présence des applications avant modification  
- Modifient uniquement les fichiers nécessaires (`/etc/xdg/mimeapps.list`)  
- N’écrasent pas les autres configurations existantes  
- Affichent clairement les actions réalisées dans la console  

⚠️ Toujours tester dans un environnement de préproduction avant un déploiement global.

---

## 🧠 Commandes Linux couramment utilisées

- `xdg-mime default` → Définir l’application par défaut pour un type MIME  
- `grep` / `cat` → Vérification des associations existantes  
- `sudo` → Exécution avec droits administrateur  
- `echo` → Affichage d’informations et statuts  

---

## 🔄 Idempotence

Les scripts peuvent être relancés sans risque :  
- ✔ Si les associations sont déjà correctes → arrêt propre  
- ✔ Sinon → modifications automatiques  

---

## 🏢 Utilisation possible en environnement professionnel

Ces scripts peuvent être utilisés dans :  
- Déploiement manuel sur un poste Linux  
- Scripts de configuration initiale pour des machines utilisateurs  
- Déploiement via des outils de gestion de configuration (Ansible, Puppet, etc.)  

---

## ⚠️ Avertissement

Ces scripts sont fournis « en l’état ».  
L’auteur ne peut être tenu responsable d’un mauvais usage ou d’une modification inadaptée.