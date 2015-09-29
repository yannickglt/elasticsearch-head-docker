FROM debian:7.6

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update -q &&\
	apt-get install -y python-twisted-web &&\
	rm -rf /var/lib/apt/lists/*

ADD run /usr/local/bin/run
RUN chmod +x /usr/local/bin/run

ADD . /var/www
WORKDIR /var/www

EXPOSE 8080

CMD ["/usr/local/bin/run"]
