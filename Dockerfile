FROM keybaseio/client:6.2.4-20240101013525-ae7e4a1c15-alpine

RUN apk add git

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
