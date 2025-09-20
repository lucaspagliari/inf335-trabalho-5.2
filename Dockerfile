FROM openjdk:11-jdk-slim

WORKDIR /app

COPY OlaUnicamp.java /app/

RUN javac OlaUnicamp.java

CMD ["java", "OlaUnicamp"]
