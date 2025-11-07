[
    (kw_use)
    (kw_alter)
    (kw_create)
    (kw_keyspace)
    (kw_table)
    (kw_with)
    (kw_where)
    (kw_if)
    (kw_and)
    (kw_set)
    (kw_in)
    (kw_to)
    (kw_from)
    (kw_using)
    (kw_timestamp)
    (kw_ttl)
    (kw_exists)
    (kw_not)
    (kw_type)
    (kw_view)
    (kw_materialized)
    (kw_replication)
    (kw_durable_writes)
    (kw_batch)
    (kw_apply)
    (kw_begin)
    (kw_unlogged)
    (kw_logged)
    (kw_counter)
    (kw_truncate)
    (kw_insert)
    (kw_into)
    (kw_values)
    (kw_update)
    (kw_delete)
    (kw_role)
    (kw_password)
    (kw_user)
    (kw_superuser)
    (kw_nosuperuser)
    (kw_add)
    (kw_drop)
    (kw_rename)
    (kw_compact)
    (kw_storage)
    (kw_contains)
    (kw_key)
    (kw_login)
    (kw_options)
    (kw_or)
    (kw_replace)
    (kw_sfunc)
    (kw_stype)
    (kw_final_func)
    (kw_init_cond)
    (kw_language)
    (kw_input)
    (kw_on)
    (kw_function)
    (kw_called)
    (kw_returns)
    (kw_filtering)
    (kw_distinct)
    (kw_as)
    (kw_keys)
    (kw_group)
    (kw_by)
    (kw_json)
    (kw_null)
    (kw_custom)
    (kw_aggregate)
    (kw_all)
    (kw_allow)
    (kw_asc)
    (kw_authorize)
    (kw_clustering)
    (kw_desc)
    (kw_describe)
    (kw_entries)
    (kw_full)
    (kw_grant)
    (kw_index)
    (kw_keyspaces)
    (kw_limit)
    (kw_modify)
    (kw_norecursive)
    (kw_of)
    (kw_order)
    (kw_partition)
    (kw_per)
    (kw_permissions)
    (kw_primary)
    (kw_revoke)
    (kw_select)
    (kw_users)
    (kw_commit)
    (kw_search)
    (kw_roles)
    (kw_deterministic)
    (kw_monotonic)
    (kw_java)
    (kw_java_script)
    (kw_is)
    (kw_hashed)
    (kw_access)
    (kw_dcs)
    (kw_cidrs)
    (kw_columns)
    (kw_profiles)
    (kw_config)
    (kw_rows)
    (kw_functions)
    (kw_mbeans)
    (kw_mbean)
    (kw_pattern)
    (kw_execute)
    (kw_proxy)
    (kw_id)
    (kw_like)
    (kw_ann)
    (kw_offset)
    (kw_list)
    (kw_token)
    (kw_writetime)
    (kw_count)
    (kw_max)
    (kw_min)
    (kw_sum)
    (kw_avg)
    (kw_any)
    (kw_nan)
    (kw_infinity)
    (kw_static)
    (kw_consistency)
    (kw_level)
    (kw_local_one)
    (kw_local_quorum)
    (kw_quorum)
    (kw_each_quorum)
    (kw_one)
    (kw_two)
    (kw_three)
    (kw_having)
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

[
    (cql_types_union)
    (cql_types_constructor_list)
    (cql_types_constructor_tuple)
    (cql_types_constructor_map)
    (cql_types_constructor_frozen)
    (cql_types_constructor_set)
] @type
(uuid_construct) @constructor

(string_literal) @string
(quoted_identifier) @string

(identifier) @variable

[
  "$$"
] @string.special

[
    (line_comment)
    (block_comment)
] @comment

(literal
    (integer) @number)
(literal
    (float) @number)

((identifier) @variable
  (#match? @number "^[-]?[0-9]+(\\.[0-9]+([eE][+-]?[0-9]+)?)?$"))

((literal) @constant
  (#match? @number "^[-]?[0-9]+(\\.[0-9]+([eE][+-]?[0-9]+)?)?$"))

(bool_choice) @variable.special

(table_label_part) @string

[
    (graph_engine)
    (graph_engine_type)
] @variable.special

(code_block) @embedded

(func_definition) @function

(func_definition
    function_name: (identifier) @function
    argument: [
        (literal (identifier) @property)
        (wild_card) @variable.special
    ]
)

(selectors
    selector_normal:[
        (literal (identifier) @constant)
        (wild_card) @variable.special
    ]
)
