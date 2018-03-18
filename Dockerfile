FROM ubuntu:16.04

RUN mkdir -p /home/images
WORKDIR /home/images

RUN apt-get update && apt-get install -y --no-install-recommends \
    mininet \
    tcpdump \
    wireshark


EXPOSE 6653 6633

