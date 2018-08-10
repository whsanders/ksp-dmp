FROM mono:5.10.0

ARG version=latest

RUN apt-get update && \
    apt-get install -y wget unzip && \
    wget https://d-mp.org/downloads/release/$version/DMPServer.zip && \
    wget https://d-mp.org/downloads/updater/DMPUpdater.exe && \
    unzip DMPServer.zip && \
    mv DMPUpdater.exe /DMPServer && \
    rm -f DMPServer.zip

EXPOSE 6702 6703

WORKDIR /DMPServer

ENTRYPOINT ["mono"]
CMD ["DMPServer.exe"]
