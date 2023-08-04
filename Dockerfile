# FROM telegraf
FROM telegraf:alpine

## Necessary installs for Alpine
RUN apk update && apk add dpkg nano
# RUN apt-get update && apt-get install -y dpkg 

## VOLUME /var/run/docker.sock:/var/run/docker.sock
COPY telegraf.conf /etc/telegraf/telegraf.conf
COPY dpkg.sh /etc/telegraf/dpkg.sh

## ENTRYPOINT [ "/bin/telegraf" ]
## ENTRYPOINT ["/usr/bin/telegraf"]