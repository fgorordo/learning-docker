# Imagen base
# FROM node:19.2-alpine3.16

# Imagen base por plataforma utilizada segun donde lo estemos corriendo (MAC,WINDOWS,LINUX, 64, 86,etc.)
# FROM --platform=linux/amd64 node:19.2-alpine3.16

# Docker agrega dos variables "BUILDPLATFORM" Y "TARGETPLATFORM"
# Crea la imagen en base a la plataforma de la variable usando el siguiente comando
# docker buildx build --platform linux/amd64,linux/arm64,linux/arm/v7 -t <username>/<image>:latest --push .
FROM --platform=$BUILDPLATFORM node:19.2-alpine3.16

# Viene con carpeta interna llamada "/app" donde vamos a ubicar nuestra app
# es lo mismo que cd app
WORKDIR /app

# Copiar archivos que deseamos meter en la imagen(inicialmente package.json para hacer stage)
COPY package.json ./

# Reconstruir los módulos de node utilizando el package.json
RUN npm install

# Copiar todos los otros archivos
COPY . .

#Integración de pruebas automaticas
RUN npm run test

#En algunos casos compilar el código
RUN npm run build

# Eliminar dev dependencies
RUN rm -rf test && rm -rf node_modules

# Instala unicamente las dependencias de produción
RUN npm install --prod

# Iniciar el aplicativo utilizando comandos
CMD ["node","app.js"]
