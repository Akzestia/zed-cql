# Setup

A few things you should do after installing the extension.

### Installing Language Server

You can easily install language server using cargo

```sh
cargo install cqlls
```

Aftter installing the language server make sure to add the following environment variables to your shell config

```sh
# Adds cqlls to your path
export PATH="$HOME/.cargo/bin:$PATH"

# Env variables used by the language server

# Db related
export CQL_LSP_DB_URL="172.17.0.2"
export CQL_LSP_DB_PASSWD="cassandra"
export CQL_LSP_DB_USER="cassandra"
export CQL_LSP_TLS_MODE="none|tls"
export CQL_LSP_TLS_CA_CERT_FILE=""

# Logging and debugging
export CQL_LSP_ENABLE_LOGGING="false"

# Formatting related settings
export CQL_LSP_TYPE_ALIGNMENT_OFFSET="7"
```

### Installing Query Preview Tool

You can also install preview tool which is optional but will allow you to both execute and preview queries without leaving zed

> [!NOTE]
> If you already have the language server installed you don't need to add any new env variables

Install via cargo

```sh
cargo install wq-zed
```

After that you can execute queries via Tasks provided by extension.
> [!TIP]
> You can create a keybinding to save time

```json
{
    "context": "Editor && vim_mode == visual && !menu",
    "bindings": {
      "[ c": ["task::Spawn", { "task_name": "Execute query" }]
    }
}
```

### Additional docs

For more detailed docs check [language server](https://github.com/Akzestia/cqlls) &&  [preview tool](https://github.com/Akzestia/wq) repos.
