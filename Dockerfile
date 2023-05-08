# Define la imagen base
FROM node:14-alpine

# Establece el directorio de trabajo
WORKDIR /app

# Copia el archivo package.json y package-lock.json al directorio de trabajo
COPY package*.json ./

# Instala las dependencias
RUN npm install

# Copia todo el contenido del directorio actual al directorio de trabajo
COPY . .

# Compila la aplicación
RUN npm run build

# Expone el puerto 3000
EXPOSE 8080

# Inicia la aplicación
CMD ["npm", "start"]
