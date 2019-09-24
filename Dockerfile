FROM java

ENV FOO bar

COPY src /home/root/javahelloworld/src/

WORKDIR /home/root/javahelloworld

RUN mkdir bin 

RUN javac -d bin  src/HelloWorld.java

#RUN apt-get update && apt-get install -y vim

#ENTRYPOINT ["java", "-cp", "bin", "HelloWorld"]

RUN mkdir /data/myvol -p

RUN echo "testing testing" > /data/myvol/test

VOLUME /data/myvol

EXPOSE 80 8080
