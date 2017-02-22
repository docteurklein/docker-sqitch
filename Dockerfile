FROM perl:latest
RUN apt-get update \
    && apt-get install -y vim \
    && rm -fr /var/lib/apt/lists/*
#RUN apk --update add perl make
#RUN cpan inc::latest
RUN cpan App::Sqitch
VOLUME ["/src"]
WORKDIR /src
ENTRYPOINT ["/usr/local/bin/sqitch"]
