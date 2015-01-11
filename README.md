docker-sqitch
-------------

# run

    docker run --rm docteurklein/sqitch:pgsql

# build

    driver=Pg tag=pgsql make
    driver=mysql tag=mysql make

# push (auto-build)

Go on the admin interface of the project and add a new tag auto-build.

    driver=Pg tag=pgsql push

