
FROM ubuntu:16.04
RUN apt-get update -y
RUN apt-get install default-jdk -y
RUN apt-get update -y
WORKDIR /usr/local/
COPY . .
RUN sed -i -e 's/\r$//' run.sh
RUN chmod +x run.sh
CMD ["/bin/bash", "run.sh"]