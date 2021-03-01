version 1.0

task Sqlmetal {
  input {
    String? conn
    String? user
    String? password
    String? server
    String? database
    String? provider
    String? with_schema_loader
    String? with_db_connection
    String? with_sql_dialect
    File? code
    File? db_ml
    File? aliases
    Boolean? schema
    String? namespace
    String? entity_base
    String? member_attribute
    String? generate_type
    String? generate_equals_hash
    Boolean? s_procs
    Boolean? plural_ize
    String? culture
    String? case
    Boolean? generate_timestamps
    Boolean? readline
    Boolean? debug
    String option_dot
  }
  command <<<
    sqlmetal \
      ~{option_dot} \
      ~{if defined(conn) then ("--conn " +  '"' + conn + '"') else ""} \
      ~{if defined(user) then ("--user " +  '"' + user + '"') else ""} \
      ~{if defined(password) then ("--password " +  '"' + password + '"') else ""} \
      ~{if defined(server) then ("--server " +  '"' + server + '"') else ""} \
      ~{if defined(database) then ("--database " +  '"' + database + '"') else ""} \
      ~{if defined(provider) then ("--provider " +  '"' + provider + '"') else ""} \
      ~{if defined(with_schema_loader) then ("--with-schema-loader " +  '"' + with_schema_loader + '"') else ""} \
      ~{if defined(with_db_connection) then ("--with-dbconnection " +  '"' + with_db_connection + '"') else ""} \
      ~{if defined(with_sql_dialect) then ("--with-sql-dialect " +  '"' + with_sql_dialect + '"') else ""} \
      ~{if defined(code) then ("--code " +  '"' + code + '"') else ""} \
      ~{if defined(db_ml) then ("--dbml " +  '"' + db_ml + '"') else ""} \
      ~{if defined(aliases) then ("--aliases " +  '"' + aliases + '"') else ""} \
      ~{if (schema) then "--schema" else ""} \
      ~{if defined(namespace) then ("--namespace " +  '"' + namespace + '"') else ""} \
      ~{if defined(entity_base) then ("--entitybase " +  '"' + entity_base + '"') else ""} \
      ~{if defined(member_attribute) then ("--member-attribute " +  '"' + member_attribute + '"') else ""} \
      ~{if defined(generate_type) then ("--generate-type " +  '"' + generate_type + '"') else ""} \
      ~{if defined(generate_equals_hash) then ("--generate-equals-hash " +  '"' + generate_equals_hash + '"') else ""} \
      ~{if (s_procs) then "--sprocs" else ""} \
      ~{if (plural_ize) then "--pluralize" else ""} \
      ~{if defined(culture) then ("--culture " +  '"' + culture + '"') else ""} \
      ~{if defined(case) then ("--case " +  '"' + case + '"') else ""} \
      ~{if (generate_timestamps) then "--generate-timestamps" else ""} \
      ~{if (readline) then "--readline" else ""} \
      ~{if (debug) then "--debug" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    conn: "STRING\\nDatabase CONNECTION STRING. Cannot be used with\\n/server, /user or /password options."
    user: "Login user NAME."
    password: "Login PASSWORD."
    server: "Database server NAME."
    database: "Database catalog NAME on server."
    provider: "Specify PROVIDER. May be Ingres, MySql, Oracle,\\nOracleODP, PostgreSql or Sqlite."
    with_schema_loader: "ISchemaLoader implementation TYPE."
    with_db_connection: "IDbConnection implementation TYPE."
    with_sql_dialect: "IVendor implementation TYPE."
    code: "Output as source code to FILE. Cannot be used\\nwith /dbml option."
    db_ml: "Output as dbml to FILE. Cannot be used with /map"
    aliases: "Use mapping FILE."
    schema: "Generate schema in code files (default: enabled)."
    namespace: "Namespace NAME of generated code (default: no\\nnamespace)."
    entity_base: "Base TYPE of entity classes in the generated\\ncode (default: entities have no base class)."
    member_attribute: "ATTRIBUTE for entity members in the generated\\ncode, can be specified multiple times."
    generate_type: "Generate only the TYPE selected, can be\\nspecified multiple times and does not prevent\\nreferences from being generated (default:\\ngenerate a DataContex subclass and all the\\nentities in the schema)."
    generate_equals_hash: "overrides for Equals() and\\nGetHashCode() methods."
    s_procs: "Extract stored procedures."
    plural_ize: "Automatically pluralize or singularize class and\\nmember names using specified culture rules."
    culture: "Specify CULTURE for word recognition and\\npluralization (default: \\\"en\\\")."
    case: "Transform names with the indicated STYLE\\n(default: net; may be: leave, pascal, camel,\\nnet)."
    generate_timestamps: "Generate timestampes in the generated code\\n(default: enabled)."
    readline: "Wait for a key to be pressed after processing."
    debug: "Enables additional information to help with\\ndebugging, such as full stack traces in error\\nmessages."
    option_dot: "--language=NAME        Language NAME for source code: C#, C#2 or VB "
  }
  output {
    File out_stdout = stdout()
    File out_code = "${in_code}"
    File out_db_ml = "${in_db_ml}"
  }
}