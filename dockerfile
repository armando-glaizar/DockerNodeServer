FROM node:10-alpine
WORKDIR /usr/src/app

COPY package.json ./
RUN npm install

COPY . .
WORKDIR /usr/src/app/render

RUN npm install
RUN npm install -g @angular/cli
RUN ng build --prod
WORKDIR /usr/src/app

EXPOSE 4200
CMD [ "npm", "start" ]