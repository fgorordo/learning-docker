# 01 - Docker Basic
1. Montar la imagen de MariaDB con el tag jammy, publicar en el puerto 3306 del contenedor con el puerto 3306 de nuestro equipo, colocarle el nombre al contenedor de world-db (--name world-db) y definir las siguientes variables de entorno:

```bash
MARIADB_USER=example-user
MARIADB_PASSWORD=user-password
MARIADB_ROOT_PASSWORD=root-secret-password
MARIADB_DATABASE=world-db
```

2. Conectarse usando Table Plus a la base de datos con las credenciales del usuario (NO EL ROOT)

3. Conectarse a la base de datos world-db

4. Ejecutar el query de creación de tablas e inserción proporcionado

5. Revisar que efectivamente tengamos la data

### RESPUESTA:
```bash
docker run --name world-db -p 3306:3306 -e MARIADB_USER=example-user -e MARIADB_PASSWORD=user-password -e MARIADB_ROOT_PASSWORD=root-secret-password -e MARIADB_DATABASE=world-db -d mariadb:jammy
```