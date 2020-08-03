# Pulling official base image
FROM node:14.5.0-alpine3.10

# Setting working directory
WORKDIR /app

# Copying package.json
COPY package.json ./

# Installing app
RUN npm install

# Copying all the files
COPY . ./

# Exposing the port
EXPOSE 3000

# Starting app
CMD ["npm", "start"]
