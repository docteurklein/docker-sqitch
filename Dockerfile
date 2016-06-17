FROM perl:latest
#RUN apk --update add perl make
#RUN cpan inc::latest
RUN cpan App::Sqitch
VOLUME ["/src"]
WORKDIR /src
ENTRYPOINT ["/usr/local/bin/sqitch"]
