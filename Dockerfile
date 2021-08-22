FROM golang:1.17 AS build
WORKDIR /src
COPY /src .
RUN go build desafio.go

FROM scratch
COPY --from=build /src/desafio .
ENTRYPOINT [ "./desafio" ]