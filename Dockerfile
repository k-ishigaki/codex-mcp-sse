FROM ghcr.io/sparfenyuk/mcp-proxy:v0.8.0

RUN set -eux; \
    apk add --no-cache wget; \
    wget -qO- https://github.com/openai/codex/releases/download/codex-rs-ac6e1b2661320a631d80aa51bdfa8f1635e0c8fa-1-rust-v0.0.2506052246/codex-aarch64-unknown-linux-musl.tar.gz \
    | tar -xz -C /usr/local/bin; \
    mv /usr/local/bin/codex-aarch64-unknown-linux-musl /usr/local/bin/codex
