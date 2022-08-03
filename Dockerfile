# https://hub.docker.com/r/bitnami/couchdb/

FROM bitnami/couchdb:3.2.1

COPY --chown=1001:1001 conf/custom.ini /opt/bitnami/couchdb/etc/local.d

USER 1001
