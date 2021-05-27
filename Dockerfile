FROM node:15.12.0-alpine3.10
WORKDIR /usr/src/app
COPY package*.json ./
COPY . .

RUN groupadd -g 999 appuser && \
    useradd -r -u 999 -g appuser appuser
USER appuser

RUN npm ci
CMD ["node", "timer.js"]
