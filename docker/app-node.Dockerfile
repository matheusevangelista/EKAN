FROM node:10.16.0-alpine

RUN mkdir /home/node/app

WORKDIR /home/node/app

RUN npm install -g nodemon

EXPOSE 3000

CMD ["nodemon", "index.js"]
