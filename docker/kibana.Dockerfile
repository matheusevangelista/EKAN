# AUTHOR: MATHEUS EVANGELISTA
# Date: ABR 08, 2020
#

FROM docker.elastic.co/kibana/kibana:7.6.2
LABEL Name=kibana Version=0.0.1

ENV SERVER_NAME=kibana
ENV ELASTICSEARCH_HOSTS=http://elasticsearch:9200
