FROM ubuntu:latest

RUN apt-get update && spt-get install -y\
    python3.10 \
    python3-pip \
    git

RUN pip3 install PyYAML

COPY feed.py /use/bin/feed.py

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT [ "/entrypoint.sh" ]