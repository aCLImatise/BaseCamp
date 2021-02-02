version 1.0

task Rundatamanagers {
  input {
    File? config
    Boolean? overwrite
    Boolean? ignore_errors
    Boolean? verbose
    File? log_file
    String? galaxy
    String? user
    String? password
    File? api_key
  }
  command <<<
    run_data_managers \
      ~{if defined(config) then ("--config " +  '"' + config + '"') else ""} \
      ~{if (overwrite) then "--overwrite" else ""} \
      ~{if (ignore_errors) then "--ignore_errors" else ""} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if defined(log_file) then ("--log_file " +  '"' + log_file + '"') else ""} \
      ~{if defined(galaxy) then ("--galaxy " +  '"' + galaxy + '"') else ""} \
      ~{if defined(user) then ("--user " +  '"' + user + '"') else ""} \
      ~{if defined(password) then ("--password " +  '"' + password + '"') else ""} \
      ~{if defined(api_key) then ("--api_key " +  '"' + api_key + '"') else ""}
  >>>
  parameter_meta {
    config: "Path to the YAML config file with the list of data\\nmanagers and data to install."
    overwrite: "Disables checking whether the item already exists in\\nthe tool data table."
    ignore_errors: "Do not stop running when jobs have failed."
    verbose: "Increase output verbosity."
    log_file: "Where the log file should be stored. Default is a file\\nin your system's temp folder"
    galaxy: "Target Galaxy instance URL/IP address"
    user: "Galaxy user email address"
    password: "Password for the Galaxy user"
    api_key: "Galaxy admin user API key (required if not defined in\\nthe tools list file)\\n"
  }
  output {
    File out_stdout = stdout()
  }
}