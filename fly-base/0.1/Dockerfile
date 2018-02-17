FROM celiangarcia/gcc7-cmake:3.9.0

ENV TERM xterm-256color

RUN apt-get update && apt-get install -y libopencv-dev libcv-dev

# Google test installation
RUN apt-get install -y libgtest-dev \
    && cd /usr/src/gtest \
    && mkdir build && cd build \
    && cmake .. \
    && make -j 12 \
    && make install

