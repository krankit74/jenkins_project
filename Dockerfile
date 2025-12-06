FROM golang:1.20 AS build
WORKDIR /app
COPY . .
RUN go build -o app

FROM ubuntu
COPY --from=build /app/app /usr/local/bin/app
CMD ["app"]
