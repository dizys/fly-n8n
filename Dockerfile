FROM docker.n8n.io/n8nio/n8n
USER root

COPY docker-entrypoint.sh /

RUN chown -R root:root .n8n

ENTRYPOINT ["/docker-entrypoint.sh"]
