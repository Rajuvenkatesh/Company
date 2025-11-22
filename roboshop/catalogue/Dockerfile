FROM node:18
RUN useradd roboshop
USER roboshop
WORKDIR /app
COPY package.json /app
COPY .*js /app
RUN npm install
ENV MONGO=true
CMD [ "node", "server.js" ]