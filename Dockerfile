FROM node:7.10.1-alpine

LABEL maintainer="Vander Zago"

# Configurar timezone
RUN apk --no-cache add tzdata curl

RUN cp /usr/share/zoneinfo/Brazil/East /etc/localtime \
    && echo "Brazil/East" >  /etc/timezone

WORKDIR /opt

COPY src/dist/ /opt/dist
COPY src/server.js /opt

RUN npm install express

CMD [ "node","server.js"]