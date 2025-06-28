FROM node:20 as frontend

WORKDIR /var/www/html/frontend

COPY package*.json ./

RUN npm install

COPY . .

CMD ["npm", "start"]
