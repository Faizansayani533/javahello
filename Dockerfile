FROM openjdk:17-slim
WORKDIR /app
COPY . /app
RUN javac HelloWorld.java
CMD ["java","HelloWorld"]
