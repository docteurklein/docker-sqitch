all:
	driver=$(driver) eval "echo \"$$(<Dockerfile)\"" 2> /dev/null # | docker build -t docteurklein/sqitch:$(tag) -

