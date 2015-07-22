# vim:set ft=dockerfile:
FROM postgres:9.4

ENV PGS_VERSION 2.1

RUN apt-get update \
	&& apt-get install -y \
		postgresql-$PG_MAJOR-postgis-$PGS_VERSION
	&& rm -rf /var/lib/apt/lists/*
