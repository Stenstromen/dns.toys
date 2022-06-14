FROM golang:1.16-alpine
WORKDIR /app
RUN apk update && apk add make && rm -rf /var/cache/apk/*
COPY . .
RUN make build
EXPOSE 5354
CMD [ "./dnstoys.bin" ]