version 1.0

task Setupdatalibraries {
  input {
    File? training
    Boolean? legacy
    Boolean? verbose
    String? galaxy
    String? user
    String? password
    File? api_key
  }
  command <<<
    setup_data_libraries \
      ~{if defined(training) then ("--training " +  '"' + training + '"') else ""} \
      ~{if (legacy) then "--legacy" else ""} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if defined(galaxy) then ("--galaxy " +  '"' + galaxy + '"') else ""} \
      ~{if defined(user) then ("--user " +  '"' + user + '"') else ""} \
      ~{if defined(password) then ("--password " +  '"' + password + '"') else ""} \
      ~{if defined(api_key) then ("--api_key " +  '"' + api_key + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    training: "Set defaults that make sense for training data."
    legacy: "Use legacy APIs even for newer Galaxies that should\\nhave a batch upload API enabled."
    verbose: "Increase output verbosity."
    galaxy: "Target Galaxy instance URL/IP address"
    user: "Galaxy user email address"
    password: "Password for the Galaxy user"
    api_key: "Galaxy admin user API key (required if not defined in\\nthe tools list file)\\n"
  }
  output {
    File out_stdout = stdout()
  }
}