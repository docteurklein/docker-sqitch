FROM docteurklein/sqitch:base
RUN cpan DBD::mysql && apt-get update && apt-get install -y --no-install-recommends mysql-client && apt-get clean
