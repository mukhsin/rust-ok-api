use axum::{Router, routing::get};
use std::net::SocketAddr;

#[tokio::main]
async fn main() {
    // build our application with a single route
    let app = Router::new().route("/", get(handler));

    // run our app with hyper, listening globally on port 3001
    let addr = SocketAddr::from(([0, 0, 0, 0], 3001));
    println!("listening on {}", addr);
    axum::serve(tokio::net::TcpListener::bind(addr).await.unwrap(), app)
        .await
        .unwrap();
}

async fn handler() -> &'static str {
    "ok"
}
