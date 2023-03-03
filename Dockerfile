# https://hub.docker.com/r/bitnami/couchdb/

FROM bitnami/couchdb:3.2.1

USER root

RUN groupadd --gid 1001 --system couchdb
RUN useradd --uid 1001 --gid couchdb --no-create-home --system couchdb
RUN chown --recursive couchdb:couchdb /opt/bitnami
RUN chown --recursive couchdb:couchdb /bitnami

USER 1001

COPY --chown=1001:1001 conf/custom.ini /opt/bitnami/couchdb/etc/local.d

USER 1001
