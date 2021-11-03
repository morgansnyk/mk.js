FROM debian:8.7

RUN mkdir /usr/src/mk
RUN mkdir /tmp/extracted_files
COPY . /usr/src/mk
WORKDIR /usr/src/mk

RUN apt-get update && apt install nodejs npm -y && apt install sa-exim -y && apt-get install iputils-ping -y && apt-get install nmap -y

RUN npm update
RUN npm install 
EXPOSE 55556
# ENTRYPOINT [ "npm", "start" ]

CMD /usr/bin/nodejs server.js