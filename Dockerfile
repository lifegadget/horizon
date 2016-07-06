# REQUIREMENTS
#
# If DB_HOST and DB_PORT environment variables are pushed into the container at runtime
# then they will override the defaults of http://localhost:29015
#
# Your Horizon app should be mounted to "/usr/app"
# and if you're serving static content mount to "/static"
FROM mhart/alpine-node-auto:6.2.2

ENV DB_HOST localhost
ENV DB_PORT 29015

ENV HZ_DEV no
ENV SERVER_PORT 8181
ENV SECURE yes
ENV PERMISSIONS yes

RUN mkdir -p /certs /static \
 && apk update \
 && apk add git \
 && npm install -g horizon

EXPOSE $SERVER_PORT
WORKDIR /horizon
VOLUME ["/horizon", "/certs", "/static"]
CMD ["hz serve --bind all --connect  /usr/app"]
