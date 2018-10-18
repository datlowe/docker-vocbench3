FROM openjdk:8-jdk-alpine

WORKDIR /app/vocbench3

RUN curl -L https://bitbucket.org/art-uniroma2/vocbench3/downloads/vocbench3-4.0.2_full.zip \
  && unzip vocbench3-3.0.1-full.zip -d /app/vocbench3 \
  && rm vocbench3-3.0.1-full.zip


EXPOSE 1979

ENTRYPOINT ["/app/vocbench3/st_server_run"]
