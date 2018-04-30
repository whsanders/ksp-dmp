FROM mono:5.10.0

ARG version=latest

RUN apt-get update && \
    apt-get install -y wget unzip && \
    wget https://d-mp.org/downloads/release/$version/DMPServer.zip && \
    unzip DMPServer.zip && \
    rm -f DMPServer.zip

EXPOSE 6702

ENTRYPOINT ["mono", "/DMPServer/DMPServer.exe"]
