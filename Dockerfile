FROM node:7.10.1-alpine

WORKDIR /opt

COPY src/dist/ /opt/dist
COPY src/server.js /opt

RUN npm install express

CMD [ "node","server.js"]