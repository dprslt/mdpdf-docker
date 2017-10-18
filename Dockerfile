FROM mkenney/npm:node-7-debian

RUN mkdir /data
WORKDIR /data

RUN npm install -g mdpdf
