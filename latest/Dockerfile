FROM nginx:1.15.11-alpine

LABEL image=codejamninja/oh-my-zsh:latest \
  maintainer="Jam Risser <jam@codejam.ninja>" \
  base=alpine:3.9

RUN apk add --no-cache \
  tini

COPY nginx.conf /etc/nginx/nginx.conf
COPY entrypoint.sh /usr/local/sbin/entrypoint.sh

RUN chmod +x /usr/local/sbin/entrypoint.sh
RUN wget -O /usr/local/bin/confd \
  https://github.com/kelseyhightower/confd/releases/download/v0.16.0/confd-0.16.0-linux-amd64 && \
  chmod +x /usr/local/bin/confd

ENTRYPOINT ["tini", "--", "sh", "-c", "/usr/local/sbin/entrypoint.sh"]
