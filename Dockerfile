FROM python:alpine

LABEL maintainer="Mihoko-Okayami (https://hub.docker.com/r/mihokookayami/isso/)"

RUN set -eux; \
	apk add --no-cache --virtual .build-dependencies build-base libffi-dev; \
	apk add --no-cache sqlite tini; \
	pip install --no-cache isso; \
	apk del .build-dependencies; \
	rm -rf /tmp/* /var/cache/apk/*

CMD tini -- isso -c /conf/isso.conf run
