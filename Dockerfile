FROM node:7.10.0-alpine

COPY src/dist/ /opt
COPY src/server.js /opt

ENTRYPOINT [ "node /opt/server.js"]