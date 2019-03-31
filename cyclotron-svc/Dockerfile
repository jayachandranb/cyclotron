FROM node:latest

ENV NPM_CONFIG_LOGLEVEL info

RUN apt-get update -y \
 && apt-get install -y --no-install-recommends \
        daemon \
        sudo \
 && apt-get clean \
 && rm -rf /var/lib/apt/lists/*

WORKDIR /home/node/app/cyclotron-svc/
ADD . .

RUN mkdir log \
 && mkdir export \
 && touch log/app.log

RUN mv init.d/cyclotron-svc /etc/init.d/ \
 && chmod +x /etc/init.d/cyclotron-svc

RUN chmod +x start.sh

RUN adduser node sudo \
 && echo '%sudo ALL=(ALL) NOPASSWD:ALL' >> /etc/sudoers

USER node

RUN sudo npm install --unsafe-perm \
 && sudo npm install -g --unsafe-perm \
                forever \
                casperjs \
                phantomjs-prebuilt

RUN mv /home/node/app/cyclotron-svc/config/config_sample.js /home/node/app/cyclotron-svc/config/config.js

VOLUME [ "/home/node/app/cyclotron-svc/config" ]
EXPOSE 8077
CMD [ "./start.sh" ]