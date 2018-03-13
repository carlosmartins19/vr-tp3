FROM ubuntu:16.04

USER root
WORKDIR /home/carlos/Desktop/myimages

COPY ENTRYPOINT.sh /

RUN apt-get update && apt-get install -y --no-install-recommends \
    mininet \
    tcpdump \
    wireshark

EXPOSE 6653 6633

ENTRYPOINT ["/ENTRYPOINT.sh"]
