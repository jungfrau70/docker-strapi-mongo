FROM node:carbon
# Create app directory
WORKDIR /srv/app
# Install app dependencies
COPY package*.json ./
RUN npm install
RUN npm install strapi@alpha
# Copy app source code
COPY ./app .
#Expose port and start application
EXPOSE 8080
CMD [ "npm", "start" ]