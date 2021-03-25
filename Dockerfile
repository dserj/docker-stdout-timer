FROM node:15.12.0-alpine3.10
WORKDIR /usr/src/app
COPY package*.json ./
COPY . .
RUN npm ci
CMD ["node", "timer.js"]
