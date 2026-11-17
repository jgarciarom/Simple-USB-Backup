# Simple-USB-Backup

**English** | [Español](README.es.md)

A simple script that backs up the contents of your USB drive to a folder on your PC. Every backup is saved on a date-stamped folder, so previous backups don't get overwritten.

Available for Windows (.bat) and Linux / macOS (.sh).

[Download]()
## Features
- One-click backup
- Easy to configure (only 2 lines to edit)
- It works with any size, and for any type of backup, not just USBs.
## Files
| System            | File                      |
| ----------------- | ------------------------- |
| **Windows**       | [simple-usb-backup.bat](simple-USB-backup.bat) |
| **Linux / macOS** | [simple-usb-backup.sh]()  |
## Configuration & Usage

1. Copy the script to the root of your USB drive.
2. Open the script with a text editor and change these two lines at the top. It should look something like this:
``` 
set "SOURCE=E:\"

set "BACKUP_ROOT=C:\Users\JohnUSB\Documents\Backup Folder"
```
3. Double click the script to start a backup process.
## License
This project is licensed under the MIT License.


