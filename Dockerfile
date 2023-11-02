FROM node:16-alpine
WORKDIR /usr/src/app
COPY package*.json ./
RUN npm i
COPY . .
RUN npm install -g @angular/cli
RUN npm run build:ssr:digitalocean
EXPOSE 4200
EXPOSE 443
CMD [ "node", "_static/main.js"]