### Setup Docker file

+Dockerfile
```
FROM node:14.17.6-alpine
WORKDIR /app
COPY . . // copy all cur_dir to work_dir
ADD api.zip . // add can extract zip files
ADD http://bootstrap4.min.css . // add the file from url
RUN npm install
ENV token=12345678
CMD ng serve

```

### Commands

```
Image:
$ docker images
$ docker image ls
$ docker image rm imageid/imagename (&) --force / -f
$ docker build -t image_app_name . // . -> Dockerfile directory

Container:
$ docker ps (or) -a
$ docker kill container_id
$ docker run imageid/image_app_name // run create container
$ docker run -it imageid/image_app_name sh // sh (or) bash
$ docker start container_id // start on existing container
$ docker start -i container_id // intractive

Image from DockerHub:
$ docker run ubuntu
$ docker run -it ubuntu
```


### Abbr

```
-t:     tag
-a:     all -> shows killed/exited
-d:     detach mode
-it:    Interactive mode
-p:     port
```

### Linux basic

```
$ ls (or) -l (or) -a (or) -la
$ cd app/test
$ cd ../
$ pwd
$ touch file.txt
$ mkdir foldername
$ mv file.txt foldername
$ rm file.txt (file*, *.txt)
$ rm -r foldername
$ printenv
$ printenv token

$ nano file.txt
$ cat file.txt // view
$ more file.txt // view
$ less file.txt // view 
$ cat file.txt file1.txt // copy file to file1
$ cat file.txt file1.txt > files.txt // concat all to files
$ ls -l > list.txt // > copy, >> append

```