FROM ubuntu:focal

USER root
WORKDIR /

ADD https://raw.githubusercontent.com/DviihX/ubuntu-gotty/main/gotty /
ADD https://raw.githubusercontent.com/DviihX/ubuntu-gotty/main/entrypoint.sh /
ADD https://raw.githubusercontent.com/DviihX/ubuntu-gotty/cloudflared/cloudflared-linux-amd64 /

RUN chmod +x /gotty
RUN chmod +x /cloudflared-linux-amd64

CMD ["/bin/bash","/entrypoint.sh"]

EXPOSE 8080/tcp
