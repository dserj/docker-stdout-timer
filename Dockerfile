FROM node:10
WORKDIR /usr/src/app
COPY package*.json ./
COPY . .
RUN npm install
CMD ["node", "timer.js"]
