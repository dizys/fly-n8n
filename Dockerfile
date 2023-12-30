FROM docker.n8n.io/n8nio/n8n

COPY docker-entrypoint.sh /

ENTRYPOINT ["tini", "--", "/docker-entrypoint.sh"]
