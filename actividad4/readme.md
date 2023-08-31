# Servicio de Saludo y Fecha



## Instalación

1. Descargar el archivo `actividad4script.sh` en el sistema. Revisar que el script tenga permisos de ejecución (`chmod +x saludo_script.sh`).

2. Crea un archivo de unidad de systemd para el servicio:

   ```bash
   sudo nano /etc/systemd/system/saludo.service


3. Mover el archivo `saludo.service` a la ubicacion de `/etc/systemd/system`

4. Utilizar los comandos:

   ```bash
   sudo systemctl daemon-reload
   sudo systemctl enable saludo.service
   sudo systemctl start saludo.service

para recargar las unidades de systemd, y habilitar el servicio ademas de iniciarlo

5. Para ver la salida del servicio usar el comando:

   ```bash
   sudo systemctl status saludo.service
