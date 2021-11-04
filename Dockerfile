FROM golang:1.17-alpine as builder

COPY . /build/
WORKDIR /build

RUN go build .


FROM alpine:latest

COPY --from=builder /build/remote_storage_adapter /remote_storage_adapter

ENTRYPOINT ["/remote_storage_adapter"]
