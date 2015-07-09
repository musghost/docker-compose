FROM node:0.12

RUN npm install -g grunt-cli
ADD ./entrypoint.sh /
RUN chmod +x /entrypoint.sh && mkdir /app
WORKDIR /app
ENTRYPOINT ["/entrypoint.sh"]
