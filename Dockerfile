FROM gcr.io/tensorflow/tensorflow

# Create app directory
WORKDIR /home/node-tensorflow

# Install Node and NPM
RUN apt-get update
RUN apt-get install -y nodejs npm
# Creates symbolic link for nodejs to node
RUN ln -s "$(which nodejs)" /usr/bin/node

# Install app dependencies
# A wildcard is used to ensure both package.json AND package-lock.json are copied
COPY package*.json ./

# If you are building your code for production
# RUN npm install --only=production
RUN npm install

# Bundle app source
COPY . .

# Bind the port
EXPOSE 8080

# Command which starts the app
CMD [ "npm", "start" ]
