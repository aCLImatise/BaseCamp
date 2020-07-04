version 1.0

task ChadoAdminRevoke {
  input {
    Boolean? verbose
    String? config
    Boolean? use_password
    String? role
    String? schema
    String dbname
  }
  command <<<
    chado admin revoke \
      ~{dbname} \
      ~{true="--verbose" false="" verbose} \
      ~{if defined(config) then ("--config " +  '"' + config + '"') else ""} \
      ~{true="--use_password" false="" use_password} \
      ~{if defined(role) then ("--role " +  '"' + role + '"') else ""} \
      ~{if defined(schema) then ("--schema " +  '"' + schema + '"') else ""}
  >>>
  parameter_meta {
    verbose: "verbose mode"
    config: "YAML file containing connection details"
    use_password: "connect with password (default: no password)"
    role: "Name of the role/user"
    schema: "Database schema (default: all)"
    dbname: "name of the database"
  }
}