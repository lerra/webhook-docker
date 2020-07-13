FROM ubuntu:20.04
RUN apt-get update \
    && apt-get install -y --no-install-recommends --no-install-suggests \
      webhook \
      git \
	ca-certificates \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/* 

CMD ["/usr/bin/webhook", "-verbose", "-hooks", "/etc/webhook/hooks.json", "-hotreload"]
