FROM mhart/alpine-node:7

RUN mkdir /data
RUN mkdir /styles

# wget cannot fetch the url https://github.com/Yelp/dumb-init/issues/73
RUN apk --no-cache add curl

RUN npm install -g mdpdf

WORKDIR /data


# Adding some styles
RUN curl http://cdnjs.cloudflare.com/ajax/libs/github-markdown-css/2.9.0/github-markdown.min.css > /styles/github-markdown.css
