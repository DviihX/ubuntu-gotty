FROM ubuntu:focal

USER root
WORKDIR /

ADD https://raw.githubusercontent.com/DviihX/ubuntu-gotty/main/gotty /
ADD https://raw.githubusercontent.com/DviihX/ubuntu-gotty/main/entrypoint.sh /

RUN chmod +x /gotty

CMD ["/bin/bash","/entrypoint.sh"]

EXPOSE 8080/tcp
