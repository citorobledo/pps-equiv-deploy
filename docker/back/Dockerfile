FROM node:14.15-alpine
RUN  apk update && apk add python make gcc g++ libpq postgresql-dev
WORKDIR /app
COPY package*.json  .
RUN npm install 
RUN npm install -g nodemon
RUN npm install -g sequelize-cli
COPY . .
CMD [ "npm", "start" ]

