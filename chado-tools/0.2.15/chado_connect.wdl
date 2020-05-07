version 1.0

task ChadoConnect {
  input {
    Boolean verboseVerbose
    String configConfig
    Boolean useUsePassword
    String? dbnameDbname
  }
  command <<<
    chado connect \
      ~{dbnameDbname} \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{if defined(configConfig) then ("--config " +  '"' + configConfig + '"') else ""} \
      ~{true="--use_password" false="" useUsePassword}
  >>>
}