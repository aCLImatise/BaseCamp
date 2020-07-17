version 1.0

task ChadoAdminSetup {
  input {
    Boolean? verbose
    String? config
    Boolean? use_password
    String? schema
    String? schema_file
    String dbname
  }
  command <<<
    chado admin setup \
      ~{dbname} \
      ~{true="--verbose" false="" verbose} \
      ~{if defined(config) then ("--config " +  '"' + config + '"') else ""} \
      ~{true="--use_password" false="" use_password} \
      ~{if defined(schema) then ("--schema " +  '"' + schema + '"') else ""} \
      ~{if defined(schema_file) then ("--schema_file " +  '"' + schema_file + '"') else ""}
  >>>
  parameter_meta {
    verbose: "verbose mode"
    config: "YAML file containing connection details"
    use_password: "connect with password (default: no password)"
    schema: "Database schema (default: GMOD schema 1.31)"
    schema_file: "File with database schema"
    dbname: "name of the database"
  }
}