FROM node:lts

# create app dir
WORKDIR /src/app

# copy contents
COPY .. WORKDIR

RUN npm i

EXPOSE 3000

# CMD ["node", "index.js"]

# ENTRYPOINT ["node", "index.js"]