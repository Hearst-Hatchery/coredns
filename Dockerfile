FROM debian:stable-slim

RUN apt-get update && apt-get -uy upgrade && \
apt-get -y install ca-certificates && update-ca-certificates && \
rm -rf /var/lib/apt/lists/*

ADD coredns /coredns

EXPOSE 53 53/udp
ENTRYPOINT ["/coredns"]
