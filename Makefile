all:
	driver=$(driver) eval "echo \"$$(<Dockerfile)\"" 2> /dev/null | docker build -t docteurklein/sqitch:$(tag) -

push:
	git checkout -b $(tag)
	driver=$(driver) eval "echo \"$$(<Dockerfile)\"" 2> /dev/null > Dockerfile
	git commit -am"auto-build $(tag)"
	git tag -f $(tag) `git rev-parse HEAD`
	git checkout -
	git branch -D $(tag)
	git push origin $(tag)

