# Usa una imagen de Node.js como base
FROM node:lts
# Establece el directorio de trabajo dentro del contenedor
WORKDIR /app
# Copia los archivos de tu proyecto al directorio de trabajo
COPY package.json package-lock.json /app/
# Instala las dependencias del proyecto
RUN npm ci --quiet --only=production
# Copia el resto de los archivos del proyecto al directorio de trabajo
COPY . /app
# Expone el puerto en el que se ejecutará tu aplicación
EXPOSE 50000
# Define el comando para iniciar tu aplicación

CMD ["node", "index.js"]
