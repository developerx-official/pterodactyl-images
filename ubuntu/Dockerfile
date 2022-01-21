FROM ubuntu:latest

RUN apt update ; apt full-upgrade -y ; apt install fail2ban wipe -y && adduser --disabled-password --home /home/container container

RUN ldconfig

USER container
ENV USER=container HOME=/home/container

WORKDIR /home/container

COPY ./entrypoint.sh /entrypoint.sh

CMD ["/bin/bash", "/entrypoint.sh"]
