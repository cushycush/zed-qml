# zed-qml

Zed extension that wires the editor to [qml-language-server](https://github.com/cushycush/qml-language-server) — completions, go-to-definition, hover, diagnostics, and more for QML.

## Install

Once published to the Zed extension registry, install from Zed: **`zed: extensions`** → search **QML**.

## Prerequisites

The extension does not bundle the server. Install `qml-language-server` and make sure it is on your `PATH`:

- **Arch Linux:** `yay -S qml-language-server-bin`
- **Nix:** `nix run github:cushycush/qml-language-server`
- **Prebuilt binaries:** [releases page](https://github.com/cushycush/qml-language-server/releases)
- **From source:** `git clone https://github.com/cushycush/qml-language-server && cd qml-language-server && make install`

## Local development

```sh
git clone https://github.com/cushycush/zed-qml
# In Zed:  cmd/ctrl+shift+p  →  "zed: install dev extension"  →  pick this directory.
```

Zed compiles the Rust crate to WASM on install, so you need the Rust toolchain plus `rustup target add wasm32-wasip1`.

## License

MIT
