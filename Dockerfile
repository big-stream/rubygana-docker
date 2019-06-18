FROM node:12-alpine

ADD https://github.com/big-stream/rubygana/archive/master.zip /root
RUN unzip /root/master.zip && mv rubygana-master /rubygana && \
  cd /rubygana && npm install --global
WORKDIR /source

ENTRYPOINT ["rubygana"]

