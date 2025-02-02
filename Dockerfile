FROM ubuntu:18.04

RUN apt-get update
RUN apt-get install -y curl gnupg2
RUN curl -sL https://deb.nodesource.com/setup_10.x | bash -
RUN apt-get install -y nodejs

WORKDIR /opt/app

COPY . .

RUN npm install --only=production

EXPOSE 8888

CMD ["npm", "start"]