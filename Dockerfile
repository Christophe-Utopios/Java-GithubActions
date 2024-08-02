from node:latest

WORKDIR /app

COPY package*.json .

RUN npm ci

COPY . .

EXPOSE 3000

ENTRYPOINT ["npm", "start"]