# vim:set ft=dockerfile:
FROM postgres:9.4

ENV PGS_VERSION 2.1
ENV PG_MAJOR 9.4
ENV PG_VERSION 9.4.4-1.pgdg80+1

RUN apt-get update \
	&& apt-get install -y \
		postgresql-$PG_MAJOR-postgis-$PGS_VERSION
	&& rm -rf /var/lib/apt/lists/*

ENV PATH /usr/lib/postgresql/$PG_MAJOR/bin:$PATH
ENV PGDATA /var/lib/postgresql/data
VOLUME /var/lib/postgresql/data	
	
COPY docker-entrypoint.sh /

ENTRYPOINT ["/docker-entrypoint.sh"]

EXPOSE 5432
CMD ["postgres"]
