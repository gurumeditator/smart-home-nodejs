FROM node:8
WORKDIR /home/node/app
ADD ./smart-home-provider/ .
RUN cd frontend && npm install -g bower && bower install --allow-root
RUN npm install
USER node
