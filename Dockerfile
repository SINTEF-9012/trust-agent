## FROM telegraf
FROM telegraf:alpine

## VOLUME /var/run/docker.sock:/var/run/docker.sock
COPY telegraf.conf /etc/telegraf/telegraf.conf

## ENTRYPOINT [ "/bin/telegraf" ]
## ENTRYPOINT ["/usr/bin/telegraf"]