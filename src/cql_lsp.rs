use serde::Deserialize;
use zed::LanguageServerId;
use zed_extension_api::{self as zed, Command, Result};

#[derive(Debug, Deserialize)]
struct CqlLspExtension {
    cached_binary_path: Option<String>,
}

impl CqlLspExtension {
    fn get_path_to_language_server_executable(
        &mut self,
        _language_server_id: &LanguageServerId,
        worktree: &zed::Worktree,
    ) -> Result<String> {
        if let Some(path) = &self.cached_binary_path {
            return Ok(path.clone());
        }

        let binary_name = "cql_lsp";

        if let Some(path) = worktree.which(&binary_name) {
            self.cached_binary_path = Some(path.clone());
            return Ok(path.clone());
        }

        Err("LSP wasn't found".to_owned())
    }
}

impl zed::Extension for CqlLspExtension {
    fn new() -> Self {
        Self {
            cached_binary_path: None,
        }
    }

    fn language_server_command(
        &mut self,
        language_server_id: &LanguageServerId,
        worktree: &zed::Worktree,
    ) -> Result<Command> {
        Ok(zed::Command {
            command: self.get_path_to_language_server_executable(language_server_id, worktree)?,
            args: vec![],
            env: Default::default(),
        })
    }
}

zed::register_extension!(CqlLspExtension);
