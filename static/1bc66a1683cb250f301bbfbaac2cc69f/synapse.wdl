version 1.0

task Synapse {
  input {
    String? username
    String? password
    File? config_path
    Boolean? debug
    Boolean? skip_checks
  }
  command <<<
    synapse \
      ~{if defined(username) then ("--username " +  '"' + username + '"') else ""} \
      ~{if defined(password) then ("--password " +  '"' + password + '"') else ""} \
      ~{if defined(config_path) then ("--configPath " +  '"' + config_path + '"') else ""} \
      ~{if (debug) then "--debug" else ""} \
      ~{if (skip_checks) then "--skip-checks" else ""}
  >>>
  parameter_meta {
    username: "Username used to connect to Synapse"
    password: "Password used to connect to Synapse"
    config_path: "Path to configuration file used to connect to Synapse\\n[default: /root/.synapseConfig]"
    debug: ""
    skip_checks: "suppress checking for version upgrade messages and\\nendpoint redirection"
  }
  output {
    File out_stdout = stdout()
  }
}