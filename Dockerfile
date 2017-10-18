FROM mkenney/npm:node-7-debian

ENTRYPOINT ["/bin/sh","-c"]
CMD []

RUN mkdir /data
WORKDIR /data

RUN npm install -g mdpdf
