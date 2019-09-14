# java-capillary-server-docker
- Java server use capillary to encrypt data, thus can decrypt on android and ios device
- Build java server on docker, run server on docker container

- Clone project: https://github.com/jakett/java-capillary-server-docker.git
- Install docker, switch to linux container
- Build image: "docker build -t image-name ."
- Run container: "docker run -i -t -d --name container-name -p 8443:8443 image-name"
- Run android and ios client to connect server

