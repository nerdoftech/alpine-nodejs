FROM alpine:3.6

LABEL version="3.6" \
      maintainer="Eric Flores <ericflorescode@gmail.com>"

RUN apk --update add nodejs nodejs-npm curl && rm -vrf /var/cache/apk/* \
    && adduser -D -H -s /sbin/nologin node

STOPSIGNAL SIGTERM

WORKDIR /app

USER node

ENTRYPOINT ["npm", "start"]
