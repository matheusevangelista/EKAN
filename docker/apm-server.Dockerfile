# AUTHOR: MATHEUS EVANGELISTA
# Date: ABR 08, 2020
#

FROM docker.elastic.co/apm/apm-server:7.6.2
LABEL Name=apm_server Version=0.0.1

FROM docker.elastic.co/apm/apm-server:7.6.2
COPY config/apm-server.yml /usr/share/apm-server/apm-server.yml
USER root
RUN chown root:apm-server /usr/share/apm-server/apm-server.yml
USER apm-server
