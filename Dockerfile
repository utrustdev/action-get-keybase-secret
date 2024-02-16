FROM keybaseio/client:6.2.5-20240101050825+3bdf76f84a-alpine

RUN apk add git

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
