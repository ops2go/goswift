FROM golang as builder

WORKDIR /go/src/github.com/ops2go/goswift/

RUN go get -d -v github.com/julienschmidt/httprouter

COPY .	.

RUN CGO_ENABLED=0 GOOS=linux go build -a -installsuffix cgo -o goswift .

FROM alpine:latest

RUN apk --no-cache add ca-certificates

WORKDIR goswift

ENV PATH=$PATH:/goswift

COPY --from=builder /go/src/github.com/ops2go/goswift/    .

COPY templates/ .

ENTRYPOINT [ "goswift" ] 
