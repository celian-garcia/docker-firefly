FROM celiangarcia/gcc7-cmake:3.9.0

ENV TERM xterm-256color


# Add the PostgreSQL PGP key to verify their Debian packages.
RUN wget --quiet -O - https://www.postgresql.org/media/keys/ACCC4CF8.asc | apt-key add -
RUN echo "deb http://apt.postgresql.org/pub/repos/apt/ $(lsb_release -cs)-pgdg main 10" > /etc/apt/sources.list.d/pgdg.list

# Add PostgreSQL's repository. It contains the most recent stable release
RUN echo "deb http://apt.postgresql.org/pub/repos/apt/ precise-pgdg main" > /etc/apt/sources.list.d/pgdg.list
RUN apt-get update \
 && DEBIAN_FRONTEND=noninteractive apt-get install -y build-essential wget libbz2-dev \
 && apt-get install -y vim libopencv-dev libcv-dev software-properties-common libpq-dev libpqtypes-dev postgresql-9.6 \
 postgresql-client-9.6 postgresql-contrib-9.6 net-tools

# Google test installation
RUN apt-get install -y libgtest-dev \
    && cd /usr/src/gtest \
    && mkdir build && cd build \
    && cmake .. \
    && make -j 12 \
    && make install
    
# Fly library installation
ARG fly_version=0.2
ENV fly_version ${fly_version}
RUN cd /usr/src \
    && wget https://github.com/celian-garcia/fly/archive/v${fly_version}.tar.gz \
    && tar xfz v${fly_version}.tar.gz \
    && cd fly-${fly_version} \
    && mkdir build \
    && cd build \
    && cmake .. \
    && make \
    && make install
    
# Boost installation (inspired from lballabio docker file https://github.com/lballabio/dockerfiles/blob/master/boost/Dockerfile)
ARG boost_version=1.64.0
ARG boost_dir=boost_1_64_0
ENV boost_version ${boost_version}

RUN wget https://dl.bintray.com/boostorg/release/${boost_version}/source/${boost_dir}.tar.gz \
    && tar xfz ${boost_dir}.tar.gz \
    && rm ${boost_dir}.tar.gz \
    && cd ${boost_dir} \
    && ./bootstrap.sh \
    && ./b2 --without-python --prefix=/usr -j 4 link=shared runtime-link=shared install \
    && cd .. && rm -rf ${boost_dir} && ldconfig
