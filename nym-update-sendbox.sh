#!/bin/bash
sudo apt update
sudo apt install pkg-config build-essential libssl-dev curl jq
curl https://sh.rustup.rs -sSf | sh
wget -O bigsirlogo https://chinapeace.github.io/logo.sh
chmod +x bigsirlogo
./bigsirlogo
rustup update
git clone https://github.com/nymtech/nym.git
cd nym
git pull
git checkout tags/v0.12.0
cargo build --release
sudo mv $HOME/nym/target/release/nym-mixnode /usr/bin
nym-mixnode -V
