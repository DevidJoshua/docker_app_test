FROM node:16
#create app directory
WORKDIR /opt/docker_app_test
# Install app dependencies
# A wildcard is used to ensure both package.json AND package-lock.json are copied
# where available (npm@5+)
RUN npm install pm2 -g

RUN npm install

COPY ../

# If you are building your code for production
# RUN npm ci --only=production
EXPOSE 8080
CMD ["pm2","start","app.js"]