FROM openjdk:8-jdk-alpine

RUN apk update && apk upgrade && apk add --no-cache curl

WORKDIR /app/vocbench3

ENV VB_VER=5.0
ENV VB_WEB_VER=5.0.0

RUN curl -L https://bitbucket.org/art-uniroma2/vocbench3/downloads/vocbench3-${VB_WEB_VER}_full.zip -o vocbench3_full.zip \
  && unzip vocbench3_full.zip -d /app/vocbench3 \
  && rm vocbench3_full.zip

RUN mkdir data

COPY it.uniroma2.art.semanticturkey.cfg /app/vocbench3/semanticturkey-${VB_VER}/etc/it.uniroma2.art.semanticturkey.cfg

EXPOSE 1979

CMD sh /app/vocbench3/semanticturkey-${VB_VER}/bin/karaf server
