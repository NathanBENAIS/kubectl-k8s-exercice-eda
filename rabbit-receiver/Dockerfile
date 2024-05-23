# FROM node:18-alpine
# COPY . .
# RUN yarn install
# CMD [ "node", "main" ]
FROM node:18-alpine

WORKDIR /app

COPY package.json yarn.lock ./
RUN yarn install

COPY . .

CMD ["node", "main.js"]
