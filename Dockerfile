
#BASE IMAGE
FROM ubuntu:16.04

MAINTAINER Stefano Campese "sircampdevelop@gmail.com"

#INSTALLING UPDATES AND DEPENDENCIES
RUN apt-get update && apt-get upgrade --yes
RUN apt-get install --yes curl
RUN apt-get install --yes apt-utils

#INSTALLING NODEJS AND NPM>= 6
RUN curl --silent --location https://deb.nodesource.com/setup_6.x | bash -
RUN apt-get install --yes nodejs
RUN apt-get install --yes build-essential
RUN apt-get install --yes nano

#INSTALLING WEBPPL
RUN npm install -g webppl

#ADDING SOURCES FOLDER
VOLUME ["sources"]
ADD ./sources /sources

WORKDIR /sources