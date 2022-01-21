FROM ubuntu:latest

# Create user
RUN adduser --disabled-password --home /home/container container

# Install preferred packages
RUN apt update ; apt full-upgrade -y ; apt install fail2ban wipe -y

# Install packages for .NET
RUN apt install -y --no-install-recommends libc6 libgcc1 libgssapi-krb5-2 libicu66 libssl1.1 libstdc++6 zlib1g openssl

# Install a bunch of random packages for supporting things
RUN apt install -y --no-install-recommends tar curl gcc g++ lib32gcc1 libgcc1 libcurl4-gnutls-dev:i386 libssl1.0.0:i386 libcurl4:i386 lib32tinfo5 libtinfo5:i386 lib32z1 lib32stdc++6 libncurses5:i386 libcurl3-gnutls:i386 iproute2 gdb libsdl1.2debian libfontconfig telnet net-tools netcat tzdata

USER container
ENV USER=container HOME=/home/container

WORKDIR /home/container

COPY ./entrypoint.sh /entrypoint.sh

CMD ["/bin/bash", "/entrypoint.sh"]
