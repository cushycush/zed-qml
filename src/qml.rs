use zed_extension_api::{self as zed, LanguageServerId, Result};

struct QmlExtension;

impl zed::Extension for QmlExtension {
    fn new() -> Self {
        Self
    }

    fn language_server_command(
        &mut self,
        _language_server_id: &LanguageServerId,
        worktree: &zed::Worktree,
    ) -> Result<zed::Command> {
        let binary = worktree
            .which("qml-language-server")
            .ok_or_else(|| "qml-language-server not found on PATH".to_string())?;

        Ok(zed::Command {
            command: binary,
            args: Vec::new(),
            env: Vec::new(),
        })
    }
}

zed::register_extension!(QmlExtension);
