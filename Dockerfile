FROM node:14.1.0

RUN mkdir /usr/src/mk
RUN mkdir /tmp/extracted_files
COPY . /usr/src/mk
WORKDIR /usr/src/mk

RUN npm update
RUN npm install 
EXPOSE 55556
ENTRYPOINT [ "npm", "start" ]
