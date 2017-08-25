build:
	GOOS=linux GOARCH=amd64 go build -a -tags netgo -installsuffix netgo -o run

image:
	docker build -t sample/echo-server:latest --no-cache .
