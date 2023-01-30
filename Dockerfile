FROM node:lts-slim

WORKDIR /usr/src/SPX-GC

COPY package*.json ./

RUN npm ci --only=production

COPY . .

EXPOSE 5656
CMD ["node", "server.js"]
