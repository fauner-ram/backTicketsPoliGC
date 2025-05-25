# Usa una imagen oficial de Node.js como base
FROM node:18

# Crea y establece el directorio de trabajo dentro del contenedor
WORKDIR /app

# Copia los archivos necesarios para instalar las dependencias
COPY package*.json ./

# Instala las dependencias
RUN npm install

# Copia el resto del proyecto al contenedor
COPY . .

# Expone el puerto que usa tu servidor (ajústalo si es diferente)
EXPOSE 3000

# Comando por defecto (modo desarrollo)
CMD ["npm", "run", "dev"]
