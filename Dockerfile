FROM node:7.10.1-alpine

# Configurar timezone
RUN apk update \
    && apk add tzdata

RUN cp /usr/share/zoneinfo/Brazil/East /etc/localtime \
    && echo "Brazil/East" >  /etc/timezone

RUN apk del tzdata

WORKDIR /opt

COPY src/dist/ /opt/dist
COPY src/server.js /opt

RUN npm install express

CMD [ "node","server.js"]