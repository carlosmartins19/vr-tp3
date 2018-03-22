FROM ubuntu:16.04

USER root
WORKDIR /root


COPY CMDMININET.sh /

RUN apt-get update && apt-get install -y --no-install-recommends \
    curl \
    iproute2 \
    iputils-ping \
    mininet \
    net-tools \
    tcpdump \
    wireshark \
    vim \
    x11-xserver-utils \
    xterm \
 && rm -rf /var/lib/apt/lists/* \
 && chmod +x /CMDMININET.sh

EXPOSE 6653 6633 6640


ENTRYPOINT ["/CMDMININET.sh"]
