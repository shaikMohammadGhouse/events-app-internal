FROM launcher.gcr.io/google/nodejs

#copy to app folder
COPY . /app
WORKDIR /app
RUN npm install

#start the express app
CMD ["npm", "start"]


#steps to run
#docker --version
#docker build --help
#docker build -t int_serv:v1 .

#go to root and check all the docker images using
#comand to check images-- docker images
#create images , using images create n no. of containers
#command to check docker containers docker ps -all / docker ps
#to create a container using docker image docker run -d -p 8082:8082 internal:v1.0.0

#docker run -d -p 8082:8082 int_serv:v1
#docker run -d -p 8080:8080 ext_serv:v1   -- container1 for external
#docker run -d -p 8081:8080 ext_serv:v1   --container2 for external
                    #<internal port>: <container POrt>

# we can use following commad to run of we are not in the specific folder
#docker run -d -p 8080:8080 -e SERVER='http://localhost:8082' --network="host" ext_serv:v1

#To run internal, from the internal folder:
#docker run -d -p 8082:8082 internal:v1.0.0
#To run external, from the external folder:
#docker run -d -p 8080:8080 -e SERVER='http://localhost:8082' --network="host" external:v1.0.0


#see the running containers again using docker ps -all
#docker stop <containerID>
#docker rm <containerID>

#to pass commands to internal image use following using -e

#docker rmi <imageID> to remove images all containers should be removed before delteing images