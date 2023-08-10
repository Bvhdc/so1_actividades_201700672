# Parte 1
### Creación de Usuarios
sudo adduser usuario1

[sudo] password for bryan: 

Adding user `usuario1' ...

Adding new group `usuario1' (1001) ...

Adding new user `usuario1' (1001) with group `usuario1' ...

Creating home directory `/home/usuario1' ...

Copying files from `/etc/skel' ...

New password: 

BAD PASSWORD: The password is shorter than 8 characters

Retype new password: 

passwd: password updated successfully

Changing the user information for usuario1

Enter the new value, or press ENTER for the default

	Full Name []: 
 
	Room Number []: 
 
	Work Phone []: 
 
	Home Phone []: 
 
	Other []: 
 
Is the information correct? [Y/n] y

sudo adduser usuario2

Adding user `usuario2' ...

Adding new group `usuario2' (1002) ...

Adding new user `usuario2' (1002) with group `usuario2' ...

Creating home directory `/home/usuario2' ...

Copying files from `/etc/skel' ...

New password: 

BAD PASSWORD: The password is shorter than 8 characters

Retype new password: 

passwd: password updated successfully

Changing the user information for usuario2

Enter the new value, or press ENTER for the default

	Full Name []: 
 
	Room Number []: 
 
	Work Phone []: 
 
	Home Phone []: 
 
	Other []: 
 
Is the information correct? [Y/n] y

sudo adduser usuario3

Adding user `usuario3' ...

Adding new group `usuario3' (1003) ...

Adding new user `usuario3' (1003) with group `usuario3' ...

Creating home directory `/home/usuario3' ...

Copying files from `/etc/skel' ...

New password: 

BAD PASSWORD: The password is shorter than 8 characters

Retype new password: 

passwd: password updated successfully

Changing the user information for usuario3

Enter the new value, or press ENTER for the default

	Full Name []: 
 
	Room Number []: 
 
	Work Phone []: 
 
	Home Phone []: 
 
	Other []: 
 
Is the information correct? [Y/n] y

### Asignación de Contraseñas

sudo passwd usuario1

New password: 

BAD PASSWORD: The password is shorter than 8 characters

Retype new password: 

passwd: password updated successfully

sudo passwd usuario2

New password: 

BAD PASSWORD: The password is shorter than 8 characters

Retype new password: 

passwd: password updated successfully

sudo passwd usuario3

New password: 

BAD PASSWORD: The password is shorter than 8 characters

Retype new password: 

passwd: password updated successfully

### Información de Usuarios

id usuario1

uid=1001(usuario1) gid=1001(usuario1) groups=1001(usuario1)

### Eliminación de Usuarios

sudo deluser usuario3

Removing user `usuario3' ...

Warning: group `usuario3' has no more members.

Done.

# Parte 2

### Creación de Grupos

sudo addgroup grupo1

Adding group `grupo1' (GID 1003) ...

Done.

sudo addgroup grupo2

Adding group `grupo2' (GID 1004) ...

Done.

### Agregar Usuarios a Grupos

sudo usermod -aG grupo1 usuario1

sudo usermod -aG grupo2 usuario2

### Verificar Membresía

groups usuario1

usuario1 : usuario1 grupo1

groups usuario2

usuario2 : usuario2 grupo2

#### Eliminar Grupo

sudo deluser usuario2 grupo2

Removing user `usuario2' from group `grupo2' ...

Done.

sudo delgroup grupo2

Removing group `grupo2' ...

Done.

# Parte 3

### Creación de Archivos y Directorios

sudo -iu usuario1

nano archivo1.txt

mkdir directorio1

cd directorio1

touch archivo2.txt

### Verificar Permisos

ls -l archivo1.txt 

-rw-rw-r-- 1 usuario1 usuario1 23 ago  9 17:58 archivo1.txt

ls -ld ~

drwxr-x--- 3 usuario1 usuario1 4096 ago  9 17:58 /home/usuario1

### Modificar Permisos usando `chmod` con Modo Numérico

chmod 640 archivo1.txt

### Modificar Permisos usando `chmod` con Modo Simbólico

chmod u+x archivo2.txt

### Cambiar el Grupo Propietario

chown :grupo1 archivo2.txt

### Configurar Permisos de Directorio

cd ../

chmod 740 directorio1

### Comprobación de Acceso

cat archivo1.txt

cat: archivo1.txt: Permission denied

cat directorio1/archivo2.txt

cat: directorio1/archivo2.txt: Permission denied

### Verificación Final

su usuario1

Password: 

usuario1@bryan-virtual-machine:~$ ls -l

total 8

-rw-r----- 1 usuario1 usuario1   23 ago  9 17:58 archivo1.txt

drwxr----- 2 usuario1 usuario1 4096 ago  9 18:10 directorio1


ls -ld

drwxr-x--- 4 usuario1 usuario1 4096 ago  9 18:09 .


## Reflexion:

¿Por qué es importante gestionar correctamente los usuarios y permisos en un sistema operativo?

para evitar que otros usuarios alteren o modifiquen archivos que no les pertenecen ademas de mantener la integridad del sistema.

¿Qué otros comandos o técnicas conocen para gestionar permisos en Linux?

umask,setuid, setgid son algunos comandos que recuerdo haber escuchado

