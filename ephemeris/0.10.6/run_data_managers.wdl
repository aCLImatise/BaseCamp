version 1.0

task RunDataManagers {
  input {
    String? config
    Boolean? overwrite
    Boolean? ignore_errors
    Boolean? verbose
    String? log_file
    String? galaxy
    String? user
    String? password
    String? api_key
  }
  command <<<
    run-data-managers \
      ~{if defined(config) then ("--config " +  '"' + config + '"') else ""} \
      ~{true="--overwrite" false="" overwrite} \
      ~{true="--ignore_errors" false="" ignore_errors} \
      ~{true="--verbose" false="" verbose} \
      ~{if defined(log_file) then ("--log_file " +  '"' + log_file + '"') else ""} \
      ~{if defined(galaxy) then ("--galaxy " +  '"' + galaxy + '"') else ""} \
      ~{if defined(user) then ("--user " +  '"' + user + '"') else ""} \
      ~{if defined(password) then ("--password " +  '"' + password + '"') else ""} \
      ~{if defined(api_key) then ("--api_key " +  '"' + api_key + '"') else ""}
  >>>
  parameter_meta {
    config: "Path to the YAML config file with the list of data managers and data to install."
    overwrite: "Disables checking whether the item already exists in the tool data table."
    ignore_errors: "Do not stop running when jobs have failed."
    verbose: "Increase output verbosity."
    log_file: "Where the log file should be stored. Default is a file in your system's temp folder"
    galaxy: "Target Galaxy instance URL/IP address"
    user: "Galaxy user email address"
    password: "Password for the Galaxy user"
    api_key: "Galaxy admin user API key (required if not defined in the tools list file)"
  }
}