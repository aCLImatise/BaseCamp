version 1.0

task ChadoAdminSetup {
  input {
    Boolean? verbose
    File? config
    Boolean? use_password
    String? schema
    File? schema_file
  }
  command <<<
    chado admin setup \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if defined(config) then ("--config " +  '"' + config + '"') else ""} \
      ~{if (use_password) then "--use_password" else ""} \
      ~{if defined(schema) then ("--schema " +  '"' + schema + '"') else ""} \
      ~{if defined(schema_file) then ("--schema_file " +  '"' + schema_file + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    verbose: "verbose mode"
    config: "YAML file containing connection details"
    use_password: "connect with password (default: no password)"
    schema: "Database schema (default: GMOD schema 1.31)"
    schema_file: "File with database schema\\n"
  }
  output {
    File out_stdout = stdout()
  }
}