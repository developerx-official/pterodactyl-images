FROM ubuntu:latest

RUN apt update ; apt full-upgrade -y ; apt install fail2ban wipe -y && adduser --disabled-password --home /home/container container

RUN apt install -y --no-install-recommends libc6 libgcc1 libgssapi-krb5-2 libicu63 libssl1.1 libstdc++6 zlib1g

USER container
ENV USER=container HOME=/home/container

WORKDIR /home/container

COPY ./entrypoint.sh /entrypoint.sh

CMD ["/bin/bash", "/entrypoint.sh"]
