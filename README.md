Docker PostgreSQL
===============

PostgreSQL version: 9.5.3

Running container:

```
docker run -d -p 5432:5432 --name postgres majksner/postgres
```

Based on [official postgres image](https://registry.hub.docker.com/_/postgres/) with postgis support.
