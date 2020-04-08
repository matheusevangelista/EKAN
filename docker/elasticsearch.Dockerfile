# AUTHOR: MATHEUS EVANGELISTA
# Date: ABR 08, 2020
#

FROM docker.elastic.co/elasticsearch/elasticsearch:7.6.2
LABEL Name=elastic_search Version=0.0.1

ENV discovery.type=single-node

# default username -> elastic
ENV ELASTIC_PASSWORD_FILE=/run/secrets/bootstrapPassword.txt

COPY config/bootstrapPassword.txt /run/secrets/

RUN chmod 600 /run/secrets/bootstrapPassword.txt

COPY --chown=elasticsearch:elasticsearch config/elasticsearch.yml /usr/share/elasticsearch/config/
