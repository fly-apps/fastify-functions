FROM alpine

RUN apk add nodejs yarn

COPY package.json package.json
COPY yarn.lock yarn.lock
RUN yarn install

COPY server.js server.js
COPY start.sh start.sh
EXPOSE 3000


COPY --from=lubien/tired-proxy:2 /tired-proxy /tired-proxy

CMD /start.sh
