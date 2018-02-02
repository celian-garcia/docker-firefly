FROM celiangarcia/firefly-api-base:0.1

# Install maven to handle pom.xml
RUN apt-get update -y && apt-get install -y maven unzip

# Install build-wrapper
RUN wget https://sonarcloud.io/static/cpp/build-wrapper-linux-x86.zip \
    && unzip build-wrapper-linux-x86.zip \
    && export PATH=$PATH:`pwd`/build-wrapper-linux-x86/ \
    && build-wrapper-linux-x86-64 --help

