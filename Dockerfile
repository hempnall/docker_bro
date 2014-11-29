FROM ubuntu:14.04
RUN apt-get update && apt-get -y install build-essential python-dev libpython2.7-dev cmake zlib1g-dev flex bison libssl-dev swig  libpcap-dev 
ADD bro-2.3.1.tar.gz /build
#ADD openssl-1.0.1j.tar.gz /build
#WORKDIR /build/openssl-1.0.1j
#RUN ./config && make && make install
WORKDIR /build/bro-2.3.1
RUN ./configure && make && make install


