FROM centos:centos6
ENV NPM_CONFIG_LOGLEVEL warn
MAINTAINER nigelpoulton@hotmail.com

# Enable EPEL for Node.js
RUN rpm -Uvh http://download.fedoraproject.org/pub/epel/6/i386/epel-release-6-8.noarch.rpm

# Install Node...
RUN yum install -y npm

#Create app directory
WORKDIR /usr/src/app

# Copy app to /src
COPY package.json       /usr/src/app
COPY package-lock.json  /usr/src/app

# Install app and dependencies into /src
RUN npm install

EXPOSE 8080

CMD cd /src && node ./app.js
