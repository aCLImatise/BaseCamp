version 1.0

task ChadoAdminCreate {
  input {
    Boolean? verbose
    String? config
    Boolean? use_password
    String dbname
  }
  command <<<
    chado admin create \
      ~{dbname} \
      ~{true="--verbose" false="" verbose} \
      ~{if defined(config) then ("--config " +  '"' + config + '"') else ""} \
      ~{true="--use_password" false="" use_password}
  >>>
  parameter_meta {
    verbose: "verbose mode"
    config: "YAML file containing connection details"
    use_password: "connect with password (default: no password)"
    dbname: "name of the database"
  }
}