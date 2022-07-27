FROM node:lts

# create app dir
WORKDIR /src/app

# Install app dependencies
# A wildcard is used to ensure both package.json AND package-lock.json are copied
# where available (npm@5+)
COPY package*.json ./

RUN npm i
# for production
# RUN npm ci --only=production

# Bundle app source
# copy contents
COPY . .

EXPOSE 3000

CMD ["node", "app.js"]

# ENTRYPOINT ["node", "index.js"]
