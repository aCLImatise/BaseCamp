class: CommandLineTool
id: sqlmetal.cwl
inputs:
- id: in_conn
  doc: "STRING\nDatabase CONNECTION STRING. Cannot be used with\n/server, /user or\
    \ /password options."
  type: string?
  inputBinding:
    prefix: --conn
- id: in_user
  doc: Login user NAME.
  type: string?
  inputBinding:
    prefix: --user
- id: in_password
  doc: Login PASSWORD.
  type: string?
  inputBinding:
    prefix: --password
- id: in_server
  doc: Database server NAME.
  type: string?
  inputBinding:
    prefix: --server
- id: in_database
  doc: Database catalog NAME on server.
  type: string?
  inputBinding:
    prefix: --database
- id: in_provider
  doc: "Specify PROVIDER. May be Ingres, MySql, Oracle,\nOracleODP, PostgreSql or\
    \ Sqlite."
  type: string?
  inputBinding:
    prefix: --provider
- id: in_with_schema_loader
  doc: ISchemaLoader implementation TYPE.
  type: string?
  inputBinding:
    prefix: --with-schema-loader
- id: in_with_db_connection
  doc: IDbConnection implementation TYPE.
  type: string?
  inputBinding:
    prefix: --with-dbconnection
- id: in_with_sql_dialect
  doc: IVendor implementation TYPE.
  type: string?
  inputBinding:
    prefix: --with-sql-dialect
- id: in_code
  doc: "Output as source code to FILE. Cannot be used\nwith /dbml option."
  type: File?
  inputBinding:
    prefix: --code
- id: in_db_ml
  doc: Output as dbml to FILE. Cannot be used with /map
  type: File?
  inputBinding:
    prefix: --dbml
- id: in_aliases
  doc: Use mapping FILE.
  type: File?
  inputBinding:
    prefix: --aliases
- id: in_schema
  doc: 'Generate schema in code files (default: enabled).'
  type: boolean?
  inputBinding:
    prefix: --schema
- id: in_namespace
  doc: "Namespace NAME of generated code (default: no\nnamespace)."
  type: string?
  inputBinding:
    prefix: --namespace
- id: in_entity_base
  doc: "Base TYPE of entity classes in the generated\ncode (default: entities have\
    \ no base class)."
  type: string?
  inputBinding:
    prefix: --entitybase
- id: in_member_attribute
  doc: "ATTRIBUTE for entity members in the generated\ncode, can be specified multiple\
    \ times."
  type: string?
  inputBinding:
    prefix: --member-attribute
- id: in_generate_type
  doc: "Generate only the TYPE selected, can be\nspecified multiple times and does\
    \ not prevent\nreferences from being generated (default:\ngenerate a DataContex\
    \ subclass and all the\nentities in the schema)."
  type: string?
  inputBinding:
    prefix: --generate-type
- id: in_generate_equals_hash
  doc: "overrides for Equals() and\nGetHashCode() methods."
  type: string?
  inputBinding:
    prefix: --generate-equals-hash
- id: in_s_procs
  doc: Extract stored procedures.
  type: boolean?
  inputBinding:
    prefix: --sprocs
- id: in_plural_ize
  doc: "Automatically pluralize or singularize class and\nmember names using specified\
    \ culture rules."
  type: boolean?
  inputBinding:
    prefix: --pluralize
- id: in_culture
  doc: "Specify CULTURE for word recognition and\npluralization (default: \"en\")."
  type: string?
  inputBinding:
    prefix: --culture
- id: in_case
  doc: "Transform names with the indicated STYLE\n(default: net; may be: leave, pascal,\
    \ camel,\nnet)."
  type: string?
  inputBinding:
    prefix: --case
- id: in_generate_timestamps
  doc: "Generate timestampes in the generated code\n(default: enabled)."
  type: boolean?
  inputBinding:
    prefix: --generate-timestamps
- id: in_readline
  doc: Wait for a key to be pressed after processing.
  type: boolean?
  inputBinding:
    prefix: --readline
- id: in_debug
  doc: "Enables additional information to help with\ndebugging, such as full stack\
    \ traces in error\nmessages."
  type: boolean?
  inputBinding:
    prefix: --debug
- id: in_option_dot
  doc: '--language=NAME        Language NAME for source code: C#, C#2 or VB '
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_code
  doc: "Output as source code to FILE. Cannot be used\nwith /dbml option."
  type: File?
  outputBinding:
    glob: $(inputs.in_code)
- id: out_db_ml
  doc: Output as dbml to FILE. Cannot be used with /map
  type: File?
  outputBinding:
    glob: $(inputs.in_db_ml)
hints: []
cwlVersion: v1.1
baseCommand:
- sqlmetal
