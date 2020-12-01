FROM golang:1.15.5 AS builder
WORKDIR /go/src/github.com/teka23/orbs/
ADD . /go/src/github.com/teka23/orbs/
RUN GO111MODULE=on go build -a -o app

EXPOSE 8080
CMD ["./app"]
