FROM mkenney/npm:node-7-debian

CMD /bin/sh

RUN mkdir /data
WORKDIR /data

RUN npm install -g mdpdf
