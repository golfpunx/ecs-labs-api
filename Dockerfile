#Builder
FROM mhart/alpine-node:10 AS builder
WORKDIR /app
COPY package.json package.json
RUN npm install 
COPY . .
CMD [ "npm", "start" ]