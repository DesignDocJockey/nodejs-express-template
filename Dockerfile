#specify Base Image
FROM node:latest

#specify our working directory
WORKDIR /var/www

#copy all our source code files in our local directory into the container's working directory
COPY . .

#install NPM dependencies for the project
RUN npm install 

#expose the container port for the port mapping
EXPOSE 3000

#specify commands to start the project
ENTRYPOINT [ "npm", "start" ]