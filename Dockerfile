FROM rust:1.80 as builder
WORKDIR /app
COPY . .
RUN cargo build --release

FROM debian:bookworm-slim
RUN apt-get update && apt-get install -y ca-certificates openssl && rm -rf /var/lib/apt/lists/*
COPY --from=builder /app/target/release/rust-ok-api /usr/local/bin/app
EXPOSE 3001
CMD ["app"]
