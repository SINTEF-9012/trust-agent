## FROM telegraf
FROM telegraf:alpine

## RUN apt-get update && apt-get install -y curl wget needrestart sudo

## RUN apt-get update && apt-get install -y --no-install-recommends mtr-tiny && rm -rf /var/lib/apt/lists/*
# VOLUME /var/run/docker.sock:/var/run/docker.sock
COPY telegraf-copy.conf /etc/telegraf/telegraf.conf
## COPY telegraf-apt.sh /etc/telegraf/telegraf-apt.sh

## ENTRYPOINT [ "/bin/telegraf" ]
ENTRYPOINT ["/usr/bin/telegraf"]