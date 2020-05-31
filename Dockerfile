FROM node:10.16.3-alpine as build-stage
MAINTAINER tangjizhouchn@foxmail.com
RUN npm config set unsafe-perm true
RUN npm install gitbook-cli -g
ARG GITBOOK_VERSION=3.2.3
RUN gitbook fetch $GITBOOK_VERSION
ENV BOOKDIR /gitbook
WORKDIR $BOOKDIR
ADD . $BOOKDIR
RUN gitbook install
RUN gitbook build

FROM nginx:1.16.0
COPY --from=build-stage /gitbook/_book/ /usr/share/nginx/html/programer-notes/
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
