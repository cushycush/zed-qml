# zed-qml-language-server

Zed extension that wires the editor to [qml-language-server](https://github.com/cushycush/qml-language-server) — completions, go-to-definition, hover, diagnostics, document links, document symbols, signature help, workspace symbol search, and formatting for QML.

## Install

Once published to the Zed extension registry, install from Zed: **`zed: extensions`** → search **QML Language Server**. (Note: there is a separate [`qml`](https://github.com/lkroll/zed-qml) extension that drives Qt's `qmlls`. This extension drives [qml-language-server](https://github.com/cushycush/qml-language-server) instead.)

## Prerequisites

The extension does not bundle the server. Install `qml-language-server` and make sure it is on your `PATH`:

- **Arch Linux:** `yay -S qml-language-server-bin`
- **Nix:** `nix run github:cushycush/qml-language-server`
- **Prebuilt binaries:** [releases page](https://github.com/cushycush/qml-language-server/releases)
- **From source:** `git clone https://github.com/cushycush/qml-language-server && cd qml-language-server && make install`

## Contributing

This repository is a **one-way mirror** of [`editors/zed/`](https://github.com/cushycush/qml-language-server/tree/main/editors/zed) in the main [qml-language-server](https://github.com/cushycush/qml-language-server) repo. Direct commits here will be overwritten on the next publish.

Please file issues and PRs against [cushycush/qml-language-server](https://github.com/cushycush/qml-language-server).

## Local development

If you want to hack on the extension itself:

```sh
git clone https://github.com/cushycush/qml-language-server
# In Zed:  cmd/ctrl+shift+p  →  "zed: install dev extension"  →  pick editors/zed/
```

Zed compiles the Rust crate to WASM on install, so you need the Rust toolchain plus `rustup target add wasm32-wasip1`.

## License

MIT
