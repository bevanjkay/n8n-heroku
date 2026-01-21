FROM n8nio/n8n:1.123.16
USER root

RUN npm install -g fuzzball

WORKDIR /home/node/packages/cli


ENTRYPOINT []

COPY ./entrypoint.sh /
RUN chmod +x /entrypoint.sh
CMD ["/entrypoint.sh"]
