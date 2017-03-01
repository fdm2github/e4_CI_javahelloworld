FROM java:7

MAINTAINER Docker Training <education@docker.com>

COPY src /home/root/javahelloworld/src 

WORKDIR /home/root/javahelloworld

RUN mkdir bin
RUN javac -d bin src/HelloWorld.java

ENTRYPOINT ["java","-cp","bin","HelloWorld"]

ENV FOO bar
