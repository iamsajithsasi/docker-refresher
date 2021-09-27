### Setup Docker file

+Dockerfile
```
FROM node:14.17.6-alpine
RUN addgroup myapp && adduser -S -G myapp user_app // -s: system user, -g:group
USER user_app
WORKDIR /app
RUN mkdir app_data // for volumes
COPY . . // copy all cur_dir to work_dir
ADD api.zip . // add can extract zip files
ADD http://bootstrap4.min.css . // add the file from url
RUN npm install
ENV token=12345678
EXPOSE 9999 // container port
CMD npm start
```
### Commands

```
Image:
$ docker images
$ docker image ls
$ docker image rm imageid/imagename (&) --force / -f
$ docker image prune // remove all <none> or dangling image
$ docker build -t image_app_name:tag_name . // . -> Dockerfile directory
$ docker image imageid/imagename:tag_name imageid/imagename:new_tage_name

Container:
$ docker ps (or) -a
$ docker container prune // remove all stopped container
$ docker run imageid/image_app_name // run create container
$ docker run -it imageid/image_app_name sh // sh (or) bash
$ docker run -d imageid/image_app_name // detach mode
$ docker run -p 8080:3000 imageid/image_app_name // local_port:container_port
$ docker run -p 8080:3000 -v $(pwd):/app imageid/image_app_name // refresh on dev changes
$ docker exec -it container_id sh // run commands without exiting container
$ docker start container_id // start on existing container
$ docker start -i container_id // intractive
$ docker cp container_id:app/app_data .
$ docker kill container_id
$ docker stop container_id
$ docker logs -f container_id // -f logs the changes

Volume:
$ docker volume create mydata
$ docker volume inspect mydata
$ docker run -d -p 8080:3000 -v mydata:app/app_data imageid/image_app_name
$ docker
$ docker
$ docker
$ docker
$ docker
$ docker
$ docker
$ docker

Image from DockerHub:
$ docker run ubuntu
$ docker run -it ubuntu
```
### Docker template
[Angular](docker_app_template.md) 

[React](docker_app_template.md) 

### Abbr

```
-t:     tag
-a:     all -> shows killed/exited
-d:     detach mode
-it:    Interactive mode
-p:     port
-f:     follow
```


### Misc

RUN: During build of the image

CMD: During execution of the image

EXEC: Execute on the running container

docker run cn     // new container

docker start cn   // run exisiting container

<b>Increase performance:</b>

copy . . is special instruction, docker will not know if there is any file change, which cause docker to rebuild all the layers after this command. NPM install will run each time which cause it to be slow.

```
COPY . .
RUN npm install
```

<b>Solution:</b>

if package.json is same then docker will take npm install from cache which makes it fast

```
COPY package*.json . 
RUN npm install
COPY . .
```

### Linux basic

```
$ ls (or) -l (or) -a (or) -la
$ ls | grep file1
$ cd app/test
$ cd ../
$ pwd // present working directory
$ touch file.txt // create file
$ mkdir foldername
$ mv file.txt foldername
$ rm file.txt (file*, *.txt)
$ rm -r foldername
$ printenv
$ printenv token

# nano
$ nano file.txt // create nano text file
$ cat file.txt // view
$ more file.txt // view
$ less file.txt // view 
$ cat file.txt file1.txt // copy file to file1
$ cat file.txt file1.txt > files.txt // concat all to files
$ ls -l > list.txt // > copy, >> append

```