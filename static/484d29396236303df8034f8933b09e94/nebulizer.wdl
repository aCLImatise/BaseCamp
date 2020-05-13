version 1.0

task Nebulizer {
  input {
    String apiApiKey
    String usernameUsername
    String galaxyGalaxyPassword
    Boolean noNoVerify
    Boolean suppressSuppressWarnings
    Boolean debugDebug
  }
  command <<<
    nebulizer \
      ~{if defined(apiApiKey) then ("--api_key " +  '"' + apiApiKey + '"') else ""} \
      ~{if defined(usernameUsername) then ("--username " +  '"' + usernameUsername + '"') else ""} \
      ~{if defined(galaxyGalaxyPassword) then ("--galaxy_password " +  '"' + galaxyGalaxyPassword + '"') else ""} \
      ~{true="--no-verify" false="" noNoVerify} \
      ~{true="--suppress-warnings" false="" suppressSuppressWarnings} \
      ~{true="--debug" false="" debugDebug}
  >>>
}