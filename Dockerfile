FROM alpine

RUN apk add --no-cache \
        bash \
        httpie \
        curl \
        jq && \
        which bash && \
        which http && \
        which curl && \
        which jq

COPY entrypoint.sh /usr/local/bin/entrypoint.sh
COPY sample_push_event.json /sample_push_event.json
ENTRYPOINT ["entrypoint.sh"]
