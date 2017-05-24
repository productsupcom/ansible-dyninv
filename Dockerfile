FROM alpine

RUN mkdir -p /data/api
RUN mkdir -p /data/ui
COPY src/ansible-dyninv-api /data/api/
COPY src/ansible-dyninv-api-ui /data/ui/

RUN rm -rf /data/api/var/cache && mkdir /data/api/var/cache && chmod -R 777 /data/api/var/cache
RUN rm -rf /data/api/var/logs && mkdir /data/api/var/logs && chmod -R 777 /data/api/var/logs
RUN rm -rf /data/api/var/sessions && mkdir /data/api/var/sessions && chmod -R 777 /data/api/var/sessions

VOLUME /data
