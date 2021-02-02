version 1.0

task Nebulizer {
  input {
    String? api_key
    String? username
    String? galaxy_password
    Boolean? no_verify
    Boolean? suppress_warnings
    Boolean? debug
  }
  command <<<
    nebulizer \
      ~{if defined(api_key) then ("--api_key " +  '"' + api_key + '"') else ""} \
      ~{if defined(username) then ("--username " +  '"' + username + '"') else ""} \
      ~{if defined(galaxy_password) then ("--galaxy_password " +  '"' + galaxy_password + '"') else ""} \
      ~{if (no_verify) then "--no-verify" else ""} \
      ~{if (suppress_warnings) then "--suppress-warnings" else ""} \
      ~{if (debug) then "--debug" else ""}
  >>>
  parameter_meta {
    api_key: "specify API key to use for connecting to Galaxy\\ninstance. Must be supplied if there is no API\\nkey stored for the specified instance, (unless\\n--username option is specified). If there is a\\nstored API key this overrides it."
    username: "specify username (i.e. email) for connecting to\\nGalaxy instance, as an alternative to using the\\nAPI key. Prompts for a password unless one is\\nsupplied via the --galaxy_password option."
    galaxy_password: "supply password for connecting to Galaxy\\ninstance, when using the --username option."
    no_verify: "don't verify HTTPS connections when connecting\\nto Galaxy instance. Use this when interacting\\nwith Galaxy instances which use self-signed\\ncertificates."
    suppress_warnings: "suppress warning messages from nebulizer."
    debug: "turn on debugging output."
  }
  output {
    File out_stdout = stdout()
  }
}