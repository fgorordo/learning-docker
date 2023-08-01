# Imagen base
FROM node:19.2-alpine3.16

# Viene con carpeta interna llamada "/app" donde vamos a ubicar nuestra app
# es lo mismo que cd app
WORKDIR /app

# Copiar archivos que deseamos meter en la imagen
COPY app.js package.json ./

# Reconstruir los módulos de node utilizando el package.json
RUN npm install

# Iniciar el aplicativo utilizando comandos
CMD ["node","app.js"]
