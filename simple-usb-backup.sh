#!/bin/bash

# ==========================================================
#  You only need to change these 2 lines:
# ==========================================================

SOURCE="/media/$USER/PENDRIVE"

BACKUP_ROOT="$HOME/.BACKUPS/Pendrive"

# ==========================================================
#  No need to change anything below this line
# ==========================================================

if [ "$SOURCE" = "." ]; then SOURCE="$(cd "$(dirname "$0")" && pwd)"; fi
case "$SOURCE" in */) ;; *) SOURCE="$SOURCE/" ;; esac

if [ ! -e "$SOURCE" ]; then
    zenity --error --title="Backup" --text="Source folder does not exist."
    exit 1
fi

TIMESTAMP="$(date +%Y-%m-%d_%H-%M-%S)"
DEST="$BACKUP_ROOT/backup_$TIMESTAMP"

echo "Source:      $SOURCE"
echo "Destination: $DEST"
echo "Copying..."

mkdir -p "$DEST"

if rsync -rt --exclude='System Volume Information' --exclude='$RECYCLE.BIN' "$SOURCE" "$DEST/"; then
    zenity --info --title="Backup" --text="Backup completed in: $DEST"
else
    zenity --error --title="Backup" --text="Backup finished with errors."
fi
