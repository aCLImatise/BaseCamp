version 1.0

task Pwizpy {
  input {
    String? password
    String? engine
    String? schema
    String? tables
    Boolean? info
    Boolean? preserve_order
    String database_name
  }
  command <<<
    pwiz_py \
      ~{database_name} \
      ~{if defined(password) then ("--password " +  '"' + password + '"') else ""} \
      ~{if defined(engine) then ("--engine " +  '"' + engine + '"') else ""} \
      ~{if defined(schema) then ("--schema " +  '"' + schema + '"') else ""} \
      ~{if defined(tables) then ("--tables " +  '"' + tables + '"') else ""} \
      ~{if (info) then "--info" else ""} \
      ~{if (preserve_order) then "--preserve-order" else ""}
  >>>
  parameter_meta {
    password: ""
    engine: "Database type, e.g. sqlite, mysql or postgresql.\\nDefault is \\\"postgresql\\\"."
    schema: ""
    tables: "Only generate the specified tables. Multiple table\\nnames should be separated by commas."
    info: "Add database information and other metadata to top of\\nthe generated file."
    preserve_order: "Model definition column ordering matches source table."
    database_name: ""
  }
  output {
    File out_stdout = stdout()
  }
}