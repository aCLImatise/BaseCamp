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
      ~{true="--no-verify" false="" no_verify} \
      ~{true="--suppress-warnings" false="" suppress_warnings} \
      ~{true="--debug" false="" debug}
  >>>
  parameter_meta {
    api_key: "specify API key to use for connecting to Galaxy instance. Must be supplied if there is no API key stored for the specified instance, (unless --username option is specified). If there is a stored API key this overrides it."
    username: "specify username (i.e. email) for connecting to Galaxy instance, as an alternative to using the API key. Prompts for a password unless one is supplied via the --galaxy_password option."
    galaxy_password: "supply password for connecting to Galaxy instance, when using the --username option."
    no_verify: "don't verify HTTPS connections when connecting to Galaxy instance. Use this when interacting with Galaxy instances which use self-signed certificates."
    suppress_warnings: "suppress warning messages from nebulizer."
    debug: "turn on debugging output."
  }
}