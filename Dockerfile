FROM node:16-alpine
RUN mkdir /my_fashion
WORKDIR /my_fashion
COPY . /my_fashion
RUN npm install
COPY . .
EXPOSE 3011
CMD ["npm", "start"]