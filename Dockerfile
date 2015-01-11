FROM perl:latest
RUN cpan App::Sqitch
RUN cpan DBD::Pg
VOLUME [/src]
WORKDIR /src
ENTRYPOINT [sqitch]
