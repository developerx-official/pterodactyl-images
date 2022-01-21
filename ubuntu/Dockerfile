FROM ubuntu:latest

# Create user
RUN adduser --disabled-password --home /home/container container

# Install preferred packages
RUN apt update ; apt full-upgrade -y ; apt install fail2ban wipe -y

# Install packages for .NET
RUN apt install -y --no-install-recommends libc6 libgcc1 libgssapi-krb5-2 libicu66 libssl1.1 libstdc++6 zlib1g openssl

USER container
ENV USER=container HOME=/home/container

WORKDIR /home/container

COPY ./entrypoint.sh /entrypoint.sh

CMD ["/bin/bash", "/entrypoint.sh"]
