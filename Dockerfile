FROM node:16-alpine

# Create app directory
WORKDIR /usr/src/app

# Install nodemon
RUN yarn global add nodemon

# Install app dependencies

COPY package*.json ./

RUN npm install

# COPY package.json ./
# COPY yarn.lock ./
# RUN yarn

# Copy in the source
COPY . .

# Don't use root user
USER node

# Expose Port
EXPOSE 3000

# Run the app
CMD ["npm", "start"]