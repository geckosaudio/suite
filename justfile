default:
    @just --list

format:
    cargo fmt

format-check:
    cargo fmt --check

lint:
    cargo clippy --all-targets --all-features -- -D warnings

format-and-lint: format lint

test:
    cargo test --all-targets --all-features
    cargo test --doc --all-features

build:
    cargo truce build

test-and-build: test build
