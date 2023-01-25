FROM alpine:3.17.1                                                                                             

RUN apk --no-cache add curl
RUN apk --no-cache add jq

ADD scripts/*.sh /

RUN ls /*.sh

RUN chmod +x $(ls /*.sh)

COPY entry.sh /entry.sh
RUN chmod 755 /entry.sh

CMD ["/entry.sh"]
# CMD ["/usr/sbin/crond", "-f" ,"-l" ,"8"]

# WORKDIR /usr/src/scripts

# CMD 20 * * * * /usr/src/scripts "/usr/src/scripts/updateIpDomain.sh $DOMAIN"
# CMD 20 * * * * /usr/src/scripts "/usr/src/scripts/prueba.sh $DOMAIN"


 