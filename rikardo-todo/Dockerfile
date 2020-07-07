FROM node:12.18

WORKDIR /app

COPY . .

RUN npm ci

EXPOSE 9001

ENTRYPOINT [ "node" ]
CMD [ "index.js" ]

