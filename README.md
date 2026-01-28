# rust-ok-api

A simple, modern Rust web API built with Axum and Tokio.

## Overview

This is a minimal REST API built with Rust that returns "ok" at the root endpoint. It serves as a template or starting point for building more complex APIs.

## Features

- Built with **Axum** - A web framework for the Web, inspired by Hyper
- Powered by **Tokio** - Asynchronous runtime for the Rust ecosystem
- Simple and efficient HTTP server
- Listens on all network interfaces (0.0.0.0) on port 3001

## Prerequisites

- Rust toolchain (1.70 or later)
- Cargo (comes with Rust)

## Getting Started

1. Clone the repository:
```bash
git clone <repository-url>
cd rust-ok-api
```

2. Build the project:
```bash
cargo build
```

3. Run the server:
```bash
cargo run
```

4. Test the API:
```bash
curl http://localhost:3001/
```

Expected response: `ok`

## Project Structure

```
rust-ok-api/
├── Cargo.toml      # Project dependencies and metadata
├── Cargo.lock      # Locked dependency versions
├── src/
│   └── main.rs     # Main application entry point
├── .gitignore      # Git ignore rules
└── README.md       # This file
```

## Dependencies

- **axum 0.8.8**: Web framework for building web servers
- **tokio 1.0**: Asynchronous runtime with full features

## Usage

The API currently has a single endpoint:
- `GET /` - Returns "ok"

## License

This project is open source and available under the MIT License.

## Contributing

Contributions are welcome! Please feel free to submit a Pull Request.