FROM ubuntu:20.04

ENV TZ=Europe/Moscow
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

RUN apt update
RUN apt install -yy gcc g++ cmake git
RUN apt-get install -y vim

COPY . workspace/projects/supertask
WORKDIR workspace/projects/supertask

RUN cmake -H. -B_build -DCMAKE_BUILD_TYPE=Release -DCMAKE_INSTALL_PREFIX=_install -DBUILD_TESTS=ON
RUN cmake --build _build
RUN cmake --build _build --target install
RUN cmake --build _build --target test -- ARGS=--verbose

ENV LOG_PATH /home/logs/log.txt

VOLUME /home/logs

WORKDIR _install/bin

ENTRYPOINT ./exaples
