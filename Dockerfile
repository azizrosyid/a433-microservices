# import base image from node:14
FROM node:14
# set working directory
WORKDIR /app
# copy all files from current directory to working directory
COPY . .
# set environment variables
ENV NODE_ENV=production DB_HOST=item-db
# install dependencies and build app
RUN npm install --production --unsafe-perm && npm run build
# expose port 8080
EXPOSE 8080
# start app
CMD ["npm", "start"]