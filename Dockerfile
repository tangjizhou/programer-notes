FROM node:10.16.3-alpine
MAINTAINER tangjizhouchn@foxmail.com
RUN npm install gitbook-cli -g
ARG GITBOOK_VERSION=3.2.3
RUN gitbook fetch $GITBOOK_VERSION
ENV BOOKDIR /gitbook
VOLUME $BOOKDIR
EXPOSE 4000
WORKDIR $BOOKDIR
RUN gitbook install
CMD ["gitbook", "serve"]
