FROM mhart/alpine-node:5.7.0
MAINTAINER Chris Parker <mrcsparker@gmail.com>

RUN apk add --update nginx bash git && \
    rm -rf /var/cache/apk/*

# nginx setup
RUN mkdir -p /tmp/nginx/client-body
COPY scripts/nginx.conf /etc/nginx/nginx.conf
COPY scripts/default.conf /etc/nginx/conf.d/default.conf
COPY scripts/index.html /usr/share/nginx/html
COPY scripts/style.css /usr/share/nginx/html
COPY scripts/theme.css /usr/share/nginx/html

RUN npm install -g \
  ember-cli@2.4.1 \
  bower@1.7.7 \
  phantomjs-prebuilt@2.1.4

EXPOSE 80 443

CMD ["nginx", "-g", "daemon off;"]
