FROM nginx:1.15.11-alpine

LABEL image=codejamninja/oh-my-zsh:latest \
  maintainer="Jam Risser <jam@codejam.ninja>" \
  base=alpine:3.9

RUN apk add --no-cache \
  tini

COPY entrypoint.sh /usr/local/sbin/entrypoint.sh
COPY nginx.conf.tmpl /etc/confd/templates/nginx.conf.tmpl
COPY nginx.toml /etc/confd/conf.d/nginx.toml

RUN chmod +x /usr/local/sbin/entrypoint.sh
RUN wget -O /usr/local/bin/confd \
  https://github.com/kelseyhightower/confd/releases/download/v0.16.0/confd-0.16.0-linux-amd64 && \
  chmod +x /usr/local/bin/confd

ENV BACKENDS=localhost:22 \
  LISTEN=22 \
  PROTOCOL=tcp

ENTRYPOINT ["tini", "--", "sh", "-c", "/usr/local/sbin/entrypoint.sh"]
