version 1.0

task InstallToolDeps {
  input {
    Boolean tT
    Boolean iI
    Boolean verboseVerbose
    String galaxyGalaxy
    String userUser
    String passwordPassword
    String apiApiKey
  }
  command <<<
    install_tool_deps \
      ~{true="-t" false="" tT} \
      ~{true="-i" false="" iI} \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{if defined(galaxyGalaxy) then ("--galaxy " +  '"' + galaxyGalaxy + '"') else ""} \
      ~{if defined(userUser) then ("--user " +  '"' + userUser + '"') else ""} \
      ~{if defined(passwordPassword) then ("--password " +  '"' + passwordPassword + '"') else ""} \
      ~{if defined(apiApiKey) then ("--api_key " +  '"' + apiApiKey + '"') else ""}
  >>>
}