FROM celiangarcia/firefly-api-base:0.1

# Install maven to handle pom.xml
RUN apt-get update -y && apt-get install -y maven unzip

# Install build-wrapper
RUN wget https://sonarcloud.io/static/cpp/build-wrapper-linux-x86.zip \
    && unzip build-wrapper-linux-x86.zip -d /opt \
    && rm build-wrapper-linux-x86.zip \
    && ln -s /opt/build-wrapper-linux-x86/build-wrapper-linux-x86-64 /usr/bin/build-wrapper 

RUN apt-get remove -y unzip
