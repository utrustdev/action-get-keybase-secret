FROM keybaseio/client:6.3.0-20240216121342-8bf6d92c02-alpine

RUN apk add git

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
