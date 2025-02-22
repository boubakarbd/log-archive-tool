#!/bin/bash

# Vérifier que le répertoire des logs est fourni
if [[ ! -d "$1" ]]; then
    echo "Le répertoire $1 n'existe pas."
    exit 1
else
    # Utiliser un chemin relatif pour le répertoire d'archive
    archive_dir="./archive"
    mkdir -p "$archive_dir"
    timestamp=$(date +"%Y%m%d_%H%M%S")
    archive_name="logs_archive_$timestamp.tar.gz"
    archive_path="$archive_dir/$archive_name"

    # Créer l'archive
    tar -czf "$archive_path" -C "$1" .
    if [ $? -ne 0 ]; then
        echo "Erreur lors de la création de l'archive."
        exit 1
    fi

    # Journaliser l'action
    log_file="$archive_dir/archive.log"
    echo "Archive créée le $(date) : $archive_name" >> "$log_file"

    # Message de confirmation
    echo "Archive créée avec succès : $archive_path"
fi

