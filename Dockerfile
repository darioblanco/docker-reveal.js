# ------------------------------------------------------
#                       Dockerfile
# ------------------------------------------------------
# image:    docker-reveal.js
# tag:      latest
# name:     darioblanco/docker-reveal.js
# repo:     https://github.com/darioblanco/docker-reveal.js
# how-to:   docker build -t darioblanco/docker-reveal.js .
# Requires: node:alpine
# authors:  dblancoit@gmail.com
# ------------------------------------------------------
FROM node:10.14-alpine
LABEL maintainer="dblancoit@gmail.com"

WORKDIR /usr/src/
RUN git clone https://github.com/hakimel/reveal.js.git
WORKDIR /usr/src/reveal.js
RUN rm -rf test .travis.yml CONTRIBUTING.md .gitignore demo.html index.html
RUN npm install

CMD ["npm", "start"]
