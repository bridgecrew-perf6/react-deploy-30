FROM registry.access.redhat.com/ubi9/nodejs-16

COPY ["package.json", "package-lock.json", "./"]

RUN npm install

COPY . .

CMD ["npm", "start"]
