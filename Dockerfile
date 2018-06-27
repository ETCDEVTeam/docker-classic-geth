FROM golang:1.10.2

LABEL maintainer="Isaac Ardis <isaac@etcdevteam.com>"

ENV PATH=/usr/lib/go-1.10.2/bin:$PATH

RUN \
  apt-get update && apt-get upgrade -q -y && \
  apt-get install -y --no-install-recommends git make gcc libc-dev ca-certificates && \
  go get -d github.com/ethereumproject/go-ethereum/... && \
  go install github.com/ethereumproject/go-ethereum/cmd/...

RUN ln -s ./bin/geth geth

# Utilities
RUN apt-get install -y curl

EXPOSE 8545

ENTRYPOINT ["./geth"]
