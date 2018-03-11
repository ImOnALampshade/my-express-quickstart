FROM node:carbon

ENV NODE_ENV=production
WORKDIR /usr/src/app

# Copy everything over, then install node modules
COPY . .
RUN npm install

# Install grunt to build frontend files
RUN npm install -g grunt-cli

# Compile all coffeescript + less files
RUN npm run compile
RUN grunt coffee
RUN grunt less

EXPOSE 3000

CMD ["npm", "start"]
