FROM golang:1.13-alpine as builder
RUN apk --no-cache add git

RUN go get -d \
    github.com/pkg/errors \
    golang.org/x/net/context \
    google.golang.org/grpc \
    github.com/golang/protobuf/ptypes

WORKDIR /packages
COPY . .

RUN cd  /packages/maintemplate/server && go build -o app cmd/main.go

# --- Execution Stage

FROM alpine:latest
EXPOSE 9074/tcp

WORKDIR /root/
COPY --from=builder /packages/maintemplate/server/app /root/

ENTRYPOINT ["/root/app"]