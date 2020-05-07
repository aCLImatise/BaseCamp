version 1.0

task ChadoAdminDrop {
  input {
    Boolean verboseVerbose
    String configConfig
    Boolean useUsePassword
    String? dbnameDbname
  }
  command <<<
    chado admin drop \
      ~{dbnameDbname} \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{if defined(configConfig) then ("--config " +  '"' + configConfig + '"') else ""} \
      ~{true="--use_password" false="" useUsePassword}
  >>>
}