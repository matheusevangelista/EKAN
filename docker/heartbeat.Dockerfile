# AUTHOR: MATHEUS EVANGELISTA
# Date: ABR 09, 2020
#

FROM docker.elastic.co/beats/heartbeat:7.6.2
LABEL Name=heartbeat Version=0.0.1

COPY config/heartbeat.yml /usr/share/heartbeat/heartbeat.yml
USER root
RUN chown root:heartbeat /usr/share/heartbeat/heartbeat.yml
USER heartbeat

# Auto-Create Kibana Heartbeat Dashboard Tables
# CMD ["./heartbeat setup"]
