version 1.0

task ChadoAdminDump {
  input {
    Boolean? verbose
    String? config
    Boolean? use_password
    String dbname
    String archive
  }
  command <<<
    chado admin dump \
      ~{dbname} \
      ~{archive} \
      ~{true="--verbose" false="" verbose} \
      ~{if defined(config) then ("--config " +  '"' + config + '"') else ""} \
      ~{true="--use_password" false="" use_password}
  >>>
  parameter_meta {
    verbose: "verbose mode"
    config: "YAML file containing connection details"
    use_password: "connect with password (default: no password)"
    dbname: "name of the database"
    archive: "archive file to be created"
  }
}