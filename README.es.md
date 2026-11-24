# Simple-USB-Backup

**Español** | [English](README.md)

Un script simple que crea una copia de seguridad de tu USB a una carpeta de tu PC. Todas las copias se guardan en una carpeta con la fecha, de forma que copias de seguridad anteriores no se vean sobreescritas.

Disponible para Windows(.bat) y Linux / macOS (.sh) (soon)

## Características
- Copias de seguridad con un click.
- Fácil de configurar (solo hay que editar dos líneas).
- Funciona con cualquier tamaño, y para cualquier tipo de copia, no solo desde USBs.
## Archivos
| Sistema           | Archivo                      |
| ----------------- | ------------------------- |
| **Windows**       | [simple-usb-backup.bat](simple-USB-backup.bat) |
| **Linux / macOS** | [simple-usb-backup.sh](simple-USB-backup.sh) |
## Configuración Y Uso

1. Copia el script a la raíz de tu USB.
2. Abre el archivo con un editor de texto y cambia estas dos líneas superiores. Debería de quedar algo así:
``` 
set "SOURCE=E:\"

set "BACKUP_ROOT=C:\Users\JohnUSB\Documents\Backup Folder"
```
3. Haz doble click en el script para realizar una copia de seguridad.
## Licencia
Este proyecto se encuentra bajo la licencia MIT.



