FROM alpine:3.8

# set version label
LABEL maintainer="ironicbadger"

RUN \
 echo "**** install build packages ****" && \
 apk add --no-cache \
   ansible bash

COPY . /ansible
WORKDIR /ansible

CMD [ "ansible-playbook", "generate.yml" ]
