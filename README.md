<b>How to deploy a customise docker with apache.

Prequis : 
- Debian server

Source : 
https://docs.docker.com/engine/reference/commandline/build/#options
https://docs.docker.com/engine/reference/builder/#escape
</b>

<b>1) Install docker on debian with "docker.sh" script</b>

- chmod 755 docker.sh
- ./docker.sh
- Check If it's correctly install 


<b>2) Use the dockerfile for your docker template and customise it if you wish </b>

Look the Dockerfile

Build the the docker image with the dockerfile 

- docker build -t docker-image-name .

Deploy a docker with your docker-file-name

- docker create --tty --interactive  --name="docker-name" --hostname web1 -p 80 docker-image-name

Access of the docker bash 
- docker exec -it docker-name bash
