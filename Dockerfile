FROM rust:1.80 as builder
WORKDIR /app
COPY . .
RUN cargo build --release --bin rust-ok-api

FROM debian:bookworm-slim
RUN apt-get update && apt-get install -y ca-certificates && rm -rf /var/lib/apt/lists/*
COPY --from=builder /app/target/release/rust-ok-api /usr/local/bin/
EXPOSE 3001
CMD ["rust-ok-api"]
