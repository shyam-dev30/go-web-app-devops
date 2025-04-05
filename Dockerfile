FROM golang:1.22.5 As builder
WORKDIR /app
COPY go.mod /app
RUN go mod download
COPY . .
RUN go build -o main .
FROM gcr.io/distroless/base
WORKDIR /app
COPY --from=builder /app/main /app
COPY --from=builder /app/static /app/static
EXPOSE 8080
CMD ["./main"]
