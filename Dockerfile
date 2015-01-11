FROM perl:latest
RUN cpan App::Sqitch
RUN cpan DBD::$driver
VOLUME ["/src"]
WORKDIR /src
ENTRYPOINT ["sqitch"]
