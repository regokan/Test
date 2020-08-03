# Pulling official base image
FROM node:14.5.0-alpine3.10 as base

# Setting working directory
WORKDIR /app

# Copying package.json
COPY package.json ./

# Installing app
RUN npm install

# Copying all the files
COPY . ./

# Starting app
RUN npm run build

FROM nginx
# COPY ./default.conf ./etc/nginx/conf.d/defaut.conf
COPY --from=base /app/build /usr/share/nginx/html
EXPOSE 80