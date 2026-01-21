FROM n8nio/n8n:1.123.16
USER root

WORKDIR /home/node/packages/cli

RUN npm install fuzzball

ENTRYPOINT []

COPY ./entrypoint.sh /
RUN chmod +x /entrypoint.sh
CMD ["/entrypoint.sh"]
