FROM java:latest
MAINTAINER mas222r@gmail.com
COPY /src/main/java/DockerMainSimple.java /
RUN javac DockerMainSimple.java
RUN java DockerMainSimple
ADD /target/*.jar myhellojava.jar
ENTRYPOINT ["java","-jar","myhellojava.jar"]
CMD ["java","-version"]