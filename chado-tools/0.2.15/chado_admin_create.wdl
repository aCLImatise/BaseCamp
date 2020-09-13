version 1.0

task ChadoAdminCreate {
  input {
    Boolean? verbose
    File? config
    Boolean? use_password
    String dbname
  }
  command <<<
    chado admin create \
      ~{dbname} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if defined(config) then ("--config " +  '"' + config + '"') else ""} \
      ~{if (use_password) then "--use_password" else ""}
  >>>
  parameter_meta {
    verbose: "verbose mode"
    config: "YAML file containing connection details"
    use_password: "connect with password (default: no password)"
    dbname: "name of the database"
  }
  output {
    File out_stdout = stdout()
  }
}