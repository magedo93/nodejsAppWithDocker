FROM node:16
WORKDIR /usr/app
EXPOSE 7070
COPY package.json ./
COPY tsconfig.json ./
COPY . ./
RUN ls -a
RUN npm cache verify
RUN npm i -g npm-upgrade
RUN npm install
# RUN npm install -g ts-node typescript '@types/node'

# CMD [ "node", "index.js" ]
CMD [ "npm", "start" ]
