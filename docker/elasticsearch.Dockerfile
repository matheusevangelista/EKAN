# AUTHOR: MATHEUS EVANGELISTA
# Date: ABR 08, 2020
#

FROM docker.elastic.co/elasticsearch/elasticsearch:7.6.2
LABEL Name=elastic_search Version=0.0.1

ENV discovery.type=single-node
