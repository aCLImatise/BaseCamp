version 1.0

task RunDataManagers {
  input {
    String configConfig
    Boolean overwriteOverwrite
    Boolean ignoreIgnoreErrors
    Boolean verboseVerbose
    String logLogFile
    String galaxyGalaxy
    String userUser
    String passwordPassword
    String apiApiKey
  }
  command <<<
    run-data-managers \
      ~{if defined(configConfig) then ("--config " +  '"' + configConfig + '"') else ""} \
      ~{true="--overwrite" false="" overwriteOverwrite} \
      ~{true="--ignore_errors" false="" ignoreIgnoreErrors} \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{if defined(logLogFile) then ("--log_file " +  '"' + logLogFile + '"') else ""} \
      ~{if defined(galaxyGalaxy) then ("--galaxy " +  '"' + galaxyGalaxy + '"') else ""} \
      ~{if defined(userUser) then ("--user " +  '"' + userUser + '"') else ""} \
      ~{if defined(passwordPassword) then ("--password " +  '"' + passwordPassword + '"') else ""} \
      ~{if defined(apiApiKey) then ("--api_key " +  '"' + apiApiKey + '"') else ""}
  >>>
}