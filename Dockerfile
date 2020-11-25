FROM node:4.6

RUN mkdir /blockchain
RUN mkdir /blockchain/views
ADD package.json /blockchain/
ADD main.js /blockchain/
ADD /views/blockchain.ejs /blockchain/views/


RUN cd /blockchain && npm install

EXPOSE 3001
EXPOSE 6001

ENTRYPOINT cd /blockchain && npm install && PEERS=$PEERS npm start