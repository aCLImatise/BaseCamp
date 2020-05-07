version 1.0

task SetupDataLibraries {
  input {
    Boolean trainingTraining
    Boolean legacyLegacy
    Boolean verboseVerbose
    String galaxyGalaxy
    String userUser
    String passwordPassword
    String apiApiKey
  }
  command <<<
    setup-data-libraries \
      ~{true="--training" false="" trainingTraining} \
      ~{true="--legacy" false="" legacyLegacy} \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{if defined(galaxyGalaxy) then ("--galaxy " +  '"' + galaxyGalaxy + '"') else ""} \
      ~{if defined(userUser) then ("--user " +  '"' + userUser + '"') else ""} \
      ~{if defined(passwordPassword) then ("--password " +  '"' + passwordPassword + '"') else ""} \
      ~{if defined(apiApiKey) then ("--api_key " +  '"' + apiApiKey + '"') else ""}
  >>>
}