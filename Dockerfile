FROM postgres:16

RUN apt-get update -y \
    && apt-get install -y --no-install-recommends --no-install-suggests \
       curl \
       ca-certificates \
       bison \
       build-essential \
       flex \
       postgresql-server-dev-16 \
       locales \
       tar

WORKDIR /src/

RUN curl -fsSL https://github.com/apache/age/releases/download/PG16%2Fv1.5.0-rc0/apache-age-1.5.0-src.tar.gz -o /tmp/apache-age-1.5.0-src.tar.gz
RUN tar -xzvf /tmp/apache-age-1.5.0-src.tar.gz -C /src/ --strip-components=1
RUN ls /src/

RUN make && make install
RUN echo "shared_preload_libraries='age'" >> /usr/share/postgresql/postgresql.conf.sample
