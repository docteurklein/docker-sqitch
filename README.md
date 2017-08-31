docker-sqitch
-------------

# run

    docker run --rm docteurklein/sqitch:pgsql
    docker run --volume $(pwd):/src --rm docteurklein/sqitch:mysql

# build

    docker build -t docteurklein/sqitch:base .
    docker build -t docteurklein/sqitch:pgsql pgsql
    docker build -t docteurklein/sqitch:mysql mysql

