FROM keybaseio/client:6.1.1-20230104121127-93463966d2-alpine

RUN apk add git

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
