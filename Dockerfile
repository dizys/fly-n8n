FROM dizy/n8n:custom

COPY docker-entrypoint.sh /

ENTRYPOINT ["/docker-entrypoint.sh"]
