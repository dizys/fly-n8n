FROM dizy/n8n:custom

RUN npm install cheerio moment

COPY docker-entrypoint.sh /

ENTRYPOINT ["/docker-entrypoint.sh"]
