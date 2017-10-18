FROM mhart/alpine-node:8

RUN mkdir -p /usr/markdown-pdf
RUN mkdir /data
RUN mkdir /styles

WORKDIR  /usr/markdown-pdf
# Due to a bug with phantomjs, the -g install fail
RUN npm install markdown-pdf
RUN ln -s /usr/markdown-pdf/node_modules/markdown-pdf/bin/markdown-pdf /bin/

WORKDIR /data

# wget cannot fetch the url https://github.com/Yelp/dumb-init/issues/73
RUN apk --no-cache add curl

# Adding some styles
RUN curl http://cdnjs.cloudflare.com/ajax/libs/github-markdown-css/2.9.0/github-markdown.min.css > /styles/github-markdown.css
