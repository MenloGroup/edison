FROM ubuntu:16.04

ENV BOTDIR /opt/bot

RUN apt-get update
RUN apt-get install -y wget
RUN wget -q -O - https://deb.nodesource.com/setup_6.x | bash -
RUN apt-get install -y git build-essential nodejs
RUN rm -rf /var/lib/apt/lists/*

EXPOSE 8080

WORKDIR ${BOTDIR}
