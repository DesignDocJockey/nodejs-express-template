# Instructional Notes

#### Setup NVM
nvm list - lists all version of Node installed on local
nvm install [node version] - installs a specific version of NodeJS i.e. nvm install v12.17
nvm use [node version] - uses a specific NodeJS version i.e. nvm use v12.17

#### Initiate NodeJS Project 
- npm init
- npm install [relevant packages]

**Express Setup:**
To scaffold a quick Express project, run the following:
- npx express-generator
- npm install
- npm run start

Open chrome and go to the following: http://localhost:3000/

#### Map To Docker Container

To map the project to a Docker Container: 
Pull down the NodeJS docker Image
- docker pull node

Go into the directory where the source code is based
- use pwd to find that directory

Map the source code up to the Docker Container using the following command
- docker run -p 8080:3000 -v $PWD:/var/www node npm start -prefix /var/www

ON A WINDOWS MACHINE
- docker run -p 8080:3000 -v ${pwd}:/var/www node npm start -prefix /var/www

*where pwd is the current directory where the source code is hosted

This will enable us to make code changes to our application and see these changes cascade in real-time 
to our docker image

To specify the working directory when we start our image, we can specify the -w prefix
- docker run -p 8080:3000 -v $PWD:/var/www -w "/var/www" node npm start

To build our docker image off our DockerFile to upload into DockerHub
- docker build -t [docker user name]/[name of image] .

To build our docker image off our DockerFile on our local dev machine
- docker build -t [name of image] .

For example
- docker build -t nodetestimg .

To run the built image
- docker run -p 3000:3000 [name of image]
