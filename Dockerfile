FROM docker.n8n.io/n8nio/n8n

WORKDIR /home/node

RUN npm install cheerio moment

COPY docker-entrypoint.sh /

EXPOSE 5678/tcp
USER node
ENTRYPOINT ["tini", "--", "/docker-entrypoint.sh"]
