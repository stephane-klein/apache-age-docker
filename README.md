# Apache Age Docker

I created this Git repository to set up a `Dockerfile` that installs the [Apache Age](https://age.apache.org/) extension to the `postgres:16` Docker image.

```sh
$ docker compose build
$ docker compose up -d
$ ./scripts/enter-in-pg.sh
postgres=# create extension age;
CREATE EXTENSION
postgres=# \dx
                Liste des extensions installées
   Nom   | Version |   Schéma   |         Description
---------+---------+------------+------------------------------
 age     | 1.5.0   | ag_catalog | AGE database extension
 plpgsql | 1.0     | pg_catalog | PL/pgSQL procedural language
(2 lignes)
```
