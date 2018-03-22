FROM ubuntu:16.04

USER root
WORKDIR /root

ENV PATH /usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin

COPY CMDMININET.sh /

RUN apt-get update && apt-get install -y --no-install-recommends \
    curl \
    iproute2 \
    iputils-ping \
    net-tools \
    mininet \
    tcpdump \
    wireshark \
    vim \
    x11-xserver-utils \
    xterm \
 && rm -rf /var/lib/apt/lists/* \
 && chmod +x /ENTRYPOINT.sh

EXPOSE 6653 6633 6640


ENTRYPOINT ["/CMDMININET.sh"]
