FROM docker.n8n.io/n8nio/n8n

RUN npm install cheerio moment

COPY docker-entrypoint.sh /

ENTRYPOINT ["/docker-entrypoint.sh"]
