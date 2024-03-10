FROM node:16

RUN mkdir /prod

WORKDIR /prod

COPY ./package.json /prod

RUN npm install

COPY . /prod

RUN npm run build

EXPOSE 5000

CMD ["npm", "start"]