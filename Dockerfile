FROM ubuntu:xenial
MAINTAINER Leonardo Loures <luvres@hotmail.com>

## References:
# https://www.youtube.com/watch?v=iU5CzyyBfhY

ENV \
	POOL="equihash.usa.nicehash.com" \
	PORT="3357" \
	USER="3PThBqHfb1UVcZaZXtPAY4SC4fZNBNqCs7.1uvr3z" \
	CORES="$(nproc)" 

RUN \
	apt-get update \
	&& apt-get install -y libboost-system1.58.0 libboost-log1.58.0

COPY nheqminer_cpu /usr/bin

CMD nheqminer_cpu -l $POOL:$PORT -u $USER -t $CORES

