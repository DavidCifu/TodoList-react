# Fem servir una imatge lleugera de Node.js
FROM node:18-alpine

# Creem la carpeta de l'aplicació
WORKDIR /app

# Copiem els fitxers de dependències
COPY package*.json ./

# Instal·lem les dependències
RUN npm install

# Copiem la resta del codi
COPY . .

# Exposem el port que sol usar Node
EXPOSE 3000

# Comanda per arrencar l'aplicació
CMD ["npm", "start"]