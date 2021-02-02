version 1.0

task ChadoAdminRevoke {
  input {
    Boolean? verbose
    File? config
    Boolean? use_password
    String? role
    String? schema
  }
  command <<<
    chado admin revoke \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if defined(config) then ("--config " +  '"' + config + '"') else ""} \
      ~{if (use_password) then "--use_password" else ""} \
      ~{if defined(role) then ("--role " +  '"' + role + '"') else ""} \
      ~{if defined(schema) then ("--schema " +  '"' + schema + '"') else ""}
  >>>
  parameter_meta {
    verbose: "verbose mode"
    config: "YAML file containing connection details"
    use_password: "connect with password (default: no password)"
    role: "Name of the role/user"
    schema: "Database schema (default: all)\\n"
  }
  output {
    File out_stdout = stdout()
  }
}