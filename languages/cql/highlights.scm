; Uppercase keywords
[
    "ALTER"
    "USE"
    "WITH"
    "CREATE"
    "KEYSPACE"
    "TABLE"
    "WHERE"
    "IF"
    "AND"
    "SET"
    "IN"
    "TO"
    "FROM"
    "USING"
    "TIMESTAMP"
    "TTL"
    "EXISTS"
    "NOT"
    "TYPE"
    "VIEW"
    "MATERIALIZED"
    "REPLICATION"
    "DURABLE_WRITES"
    "BATCH"
    "APPLY"
    "BEGIN"
    "UNLOGGED"
    "LOGGED"
    "COUNTER"
    "TRUNCATE"
    "INSERT"
    "INTO"
    "VALUES"
    "UPDATE"
    "DELETE"
    "ROLE"
    "PASSWORD"
    "USER"
    "SUPERUSER"
    "NOSUPERUSER"
    "ADD"
    "DROP"
    "RENAME"
    "COMPACT"
    "STORAGE"
    "CONTAINS"
    "KEY"
    "LOGIN"
    "OPTIONS"
    "OR"
    "REPLACE"
    "SFUNC"
    "STYPE"
    "FINALFUNC"
    "INITCOND"
    "LANGUAGE"
    "INPUT"
    "ON"
    "FUNCTION"
    "CALLED"
    "RETURNS"
    "FILTERING"
    "DISTINCT"
    "AS"
    "KEYS"
    "GROUP"
    "BY"
    "JSON"
    "NULL"
    "CUSTOM"
    "AGGREGATE"
    "ALL"
    "ALLOW"
    "ASC"
    "AUTHORIZE"
    "CLUSTERING"
    "DESC"
    "DESCRIBE"
    "ENTRIES"
    "FULL"
    "GRANT"
    "INDEX"
    "KEYSPACES"
    "LIMIT"
    "MODIFY"
    "NORECURSIVE"
    "OF"
    "ORDER"
    "PARTITION"
    "PER"
    "PERMISSIONS"
    "PRIMARY"
    "REVOKE"
    "SELECT"
    "USERS"
    "COMMIT"
    "SEARCH"
    "ROLES"
    "DETERMINISTIC"
    "MONOTONIC"
    "JAVA"
    "JAVASCRIPT"
    "IS"
    "HASHED"
    "ACCESS"
    "DATACENTERS"
    "CIDRS"
    "COLUMNS"
    "PROFILES"
    "CONFIG"
    "ROWS"
    "FUNCTIONS"
    "MBEANS"
    "MBEAN"
    "PATTERN"
    "EXECUTE"
    "PROXY"
    "ID"
    "LIKE"
    "ANN"
    "OFFSET"
    "LIST"
    "COUNT"
    "MAX"
    "MIN"
    "SUM"
    "AVG"
    "TOKEN"
    "WRITETIME"
    "INFINITY"
    "NAN"
    "STATIC"
    "ANY"
    "HAVING"
    "CONSISTENCY"
    "LEVEL"
    "ONE"
    "TWO"
    "THREE"
    "QUORUM"
    "LOCAL_ONE"
    "LOCAL_QUORUM"
    "EACH_QUORUM"
] @keyword

; Lowercase keywords
[
    "alter"
    "use"
    "with"
    "create"
    "keyspace"
    "table"
    "where"
    "if"
    "and"
    "set"
    "in"
    "to"
    "from"
    "using"
    "timestamp"
    "ttl"
    "exists"
    "not"
    "type"
    "view"
    "materialized"
    "replication"
    "durable_writes"
    "batch"
    "apply"
    "begin"
    "unlogged"
    "logged"
    "counter"
    "truncate"
    "insert"
    "into"
    "values"
    "update"
    "delete"
    "role"
    "password"
    "user"
    "superuser"
    "nosuperuser"
    "add"
    "drop"
    "rename"
    "compact"
    "storage"
    "contains"
    "key"
    "login"
    "options"
    "or"
    "replace"
    "sfunc"
    "stype"
    "finalfunc"
    "initcond"
    "language"
    "input"
    "on"
    "function"
    "called"
    "returns"
    "filtering"
    "distinct"
    "as"
    "keys"
    "group"
    "by"
    "json"
    "null"
    "custom"
    "aggregate"
    "all"
    "allow"
    "asc"
    "authorize"
    "clustering"
    "desc"
    "describe"
    "entries"
    "full"
    "grant"
    "index"
    "keyspaces"
    "limit"
    "modify"
    "norecursive"
    "of"
    "order"
    "partition"
    "per"
    "permissions"
    "primary"
    "revoke"
    "select"
    "users"
    "commit"
    "search"
    "roles"
    "deterministic"
    "monotonic"
    "java"
    "javascript"
    "is"
    "hashed"
    "access"
    "datacenters"
    "cidrs"
    "columns"
    "profiles"
    "config"
    "rows"
    "functions"
    "mbeans"
    "mbean"
    "pattern"
    "execute"
    "proxy"
    "id"
    "like"
    "ann"
    "offset"
    "list"
    "count"
    "max"
    "min"
    "sum"
    "avg"
    "token"
    "writetime"
    "infinity"
    "nan"
    "static"
    "any"
    "having"
    "consistency"
    "level"
    "one"
    "two"
    "three"
    "quorum"
    "local_one"
    "local_quorum"
    "each_quorum"
] @keyword

[
  ","
  "."
  (semi_colon)
] @punctuation.delimiter

[
    ">"
    "<"
    ">="
    "<="
    "!="
    "+="
    "-="
    "*="
    "/="
    "+"
    "-"
    "/"
    "%"
    (operator_multiplication)
    (equal_sign)
] @operator

[
  "("
  ")"
  "["
  "]"
  "{"
  "}"
  "<"
  ">"
] @punctuation.bracket

[
    (number)
    (uuid)
    (timeuuid)
] @number

[
    (selectors)
] @variable.special

; Types
[
    (cql_types_union)
    (cql_types_constructor_list)
    (cql_types_constructor_tuple)
    (cql_types_constructor_map)
    (cql_types_constructor_frozen)
    (cql_types_constructor_set)
] @type
(uuid_construct) @constructor

; Strings
(string_literal) @string
(quoted_identifier) @string

(identifier) @variable

; Embeded code blocks
[
  "$$"
] @string.special

; Comment
(comment) @comment

; $.float & $.integer in $.literal
(literal
    (integer) @number)
(literal
    (float) @number)

; Integers inside identifier
((identifier) @variable
  (#match? @number "^[-]?[0-9]+(\\.[0-9]+([eE][+-]?[0-9]+)?)?$"))

; Integers inside literal
((literal) @constant
  (#match? @number "^[-]?[0-9]+(\\.[0-9]+([eE][+-]?[0-9]+)?)?$"))

; Bool Variables
(bool_choice) @variable.special

; Table Label
(table_label_part) @string

; Graph Engine Special Variables
[
    "graph_engine"
    "'Core'"
    "'Classic'"
] @variable.special

; Embeded JS & JAVA code
(code_block) @embedded

; Functions

(func_definition) @function

(func_definition
    function_name: (identifier) @function
    argument: [
        (literal (identifier) @property)
        (wild_card) @variable.special
    ]
)



; Selectors
(selectors
    selector_normal:[
        (literal (identifier) @constant)
        (wild_card) @variable.special
    ]
)
