FROM ubuntu:latest

RUN apt update ; apt full-upgrade -y ; apt install fail2ban wipe libgssapi-perl libicu63 -y && adduser --disabled-password --home /home/container container

USER container
ENV USER=container HOME=/home/container

WORKDIR /home/container

COPY ./entrypoint.sh /entrypoint.sh

CMD ["/bin/bash", "/entrypoint.sh"]
