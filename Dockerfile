FROM alpine

RUN apk add --update && apk add openjdk8-jre-base && rm -rf /var/cache/apk/*

ADD target/one-0.0.1-SNAPSHOT.jar app.jar
RUN sh -c 'touch /app.jar'

EXPOSE 8080

ENTRYPOINT [ "sh", "-c", "java -jar /app.jar" ]

