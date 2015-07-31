FROM perl:latest

RUN apt-get clean && apt-get update && apt-get -y install vim

RUN cpan App::Sqitch
RUN cpan DBD::$driver
VOLUME ["/src"]
WORKDIR /src
ENTRYPOINT ["sqitch"]
