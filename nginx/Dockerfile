FROM nginx

RUN set -eux; \
    apt-get update; \
    apt-get install --no-install-recommends -y logrotate; \
    rm -rf /var/lib/apt/lists/*
