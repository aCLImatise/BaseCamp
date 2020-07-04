version 1.0

task SetupDataLibraries {
  input {
    Boolean? training
    Boolean? legacy
    Boolean? verbose
    String? galaxy
    String? user
    String? password
    String? api_key
  }
  command <<<
    setup-data-libraries \
      ~{true="--training" false="" training} \
      ~{true="--legacy" false="" legacy} \
      ~{true="--verbose" false="" verbose} \
      ~{if defined(galaxy) then ("--galaxy " +  '"' + galaxy + '"') else ""} \
      ~{if defined(user) then ("--user " +  '"' + user + '"') else ""} \
      ~{if defined(password) then ("--password " +  '"' + password + '"') else ""} \
      ~{if defined(api_key) then ("--api_key " +  '"' + api_key + '"') else ""}
  >>>
  parameter_meta {
    training: "Set defaults that make sense for training data."
    legacy: "Use legacy APIs even for newer Galaxies that should have a batch upload API enabled."
    verbose: "Increase output verbosity."
    galaxy: "Target Galaxy instance URL/IP address"
    user: "Galaxy user email address"
    password: "Password for the Galaxy user"
    api_key: "Galaxy admin user API key (required if not defined in the tools list file)"
  }
}