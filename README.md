# CQL support for [Zed](https://zed.dev)

> [!TIP]
> Now also available in [NeoVim](https://github.com/Akzestia/nvim-cql-v2.git) 

> [!TIP]
> CQL is now supported by GitHub | [github-linguist v9.4.0](https://github.com/github-linguist/linguist/releases/tag/v9.4.0)
> Example using `cql` instad of `sql`
> ```cql
> ALTER MATERIALIZED VIEW cycling.cyclist_by_age
> ALTER MATERIALIZED VIEW cycling.cyclist_by_age
> WITH comment = 'A most excellent and useful view'
> AND bloom_filter_fp_chance = 0.02;
> 
> ALTER MATERIALIZED VIEW cycling.cyclist_by_age
> WITH compression = {
>    'stable_compression' : 'DeflateCompressor',
>    'chunk_length_kb' : 64
> }
> AND compaction = {
>    'class' : 'SizeTieredCompactionStrategy',
>    'max_threshold' : 64
> };
>
> ALTER MATERIALIZED VIEW cycling.cyclist_by_age
> WITH caching = {
>    'keys' : 'NONE',
>    'rows_per_partition' : '15'
> };
> ```

https://github.com/user-attachments/assets/780f9005-d571-489d-93e3-e61f91dcb0fe

>[!TIP]
> Read [Setup Process](/docs/README.md) </br>
> Based on [DataStax HCD](https://docs.datastax.com/en/cql/hcd/reference/cql-reference-about.html)

>[!IMPORTANT]
> Want more frequent updates? Support the project on Patreon - it helps me ship features faster and keep the lights on. ^_^  
> </br>
>[![Support me on Patreon](https://img.shields.io/endpoint.svg?url=https%3A%2F%2Fshieldsio-patreon.vercel.app%2Fapi%3Fusername%3Dakzestia%26type%3Dpatrons&style=for-the-badge)](https://patreon.com/akzestia)

>[!IMPORTANT]
> For bug reports, feature requests please open issue on the language server [repository](https://github.com/Akzestia/cql-lsp/issues) 
> </br>

## List of Supported OS

- Linux
- Mac
- Windows

## Features

- Full CQL 3.4+ support </br>
- Syntax highlighting </br>
- Outline support </br>
- Code completion </br>
- CQL commands completion </br>
- Code formatting </br>
- Smart completions based on Database context </br>
- Realtime sync with the Database (No need to manually refresh)
- Query execution directly from Zed
- Realtime query preview

## CQL in Zed vs Corpo 

- Free
- The best open-source grammar and language server (under MIT License)
- Best possible experience
- Seamless Integration with Zed
- Written in Rust :D

## Tools used by extension

- [Tree-Sitter grammar](https://github.com/Akzestia/tree-sitter-cql)
- [Language Server](https://github.com/Akzestia/cqlls)
- [Preview Tool](https://github.com/Akzestia/wq)

## License

This project is licensed under the [MIT License](LICENSE).

















