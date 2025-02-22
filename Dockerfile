FROM sbtscala/scala-sbt:eclipse-temurin-alpine-21.0.6_7_1.10.7_3.6.3

WORKDIR /scala

COPY . .

RUN adduser -u 5678 --disabled-password --gecos "" scala && chown -R scala /scala
USER scala