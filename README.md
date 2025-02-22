# Log Archive Script

## Description

Ce script Bash, `log-archive`, est conçu pour archiver les fichiers de logs d'un répertoire spécifié en les compressant dans un fichier `.tar.gz`. Il stocke ensuite l'archive dans un répertoire dédié, facilitant ainsi la gestion et la conservation des logs tout en gardant le système propre.

## Fonctionnalités

- **Archivage des logs** : Compresse les fichiers de logs dans un fichier `.tar.gz`.
- **Journalisation** : Enregistre la date et l'heure de création de chaque archive dans un fichier de log.

## Prérequis

- Un système Unix avec Bash installé.
- `tar` et `gzip` pour la compression des fichiers.
- `mailutils` ou un autre agent de transfert de mail pour l'envoi d'emails (facultatif).

## Installation

1. **Télécharger le script** :
   ```bash
   git clone https://github.com/boubakarbd/log-archive-tool.git
   ```

2. **Rendre le script exécutable** :
   ```bash
   chmod +x log-archive.sh
   ```
3. **Archiver les logs** :
   ```bash
   ./log-archive /path/to/log-directory
   ```
   ## Exemple
   ```bash
   ./log-archive /var/log
   ```





https://roadmap.sh/projects/log-archive-tool