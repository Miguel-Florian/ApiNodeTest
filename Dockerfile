FROM node:12

# Create app directory
WORKDIR /app

COPY package*.json ./

RUN npm install

# BUndle app source
COPY . .

EXPOSE 3000

CMD ["node","index.js"]
