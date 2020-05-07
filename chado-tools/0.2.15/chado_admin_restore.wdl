version 1.0

task ChadoAdminRestore {
  input {
    Boolean verboseVerbose
    String configConfig
    Boolean useUsePassword
    String? dbnameDbname
    String? archiveArchive
  }
  command <<<
    chado admin restore \
      ~{dbnameDbname} \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{if defined(configConfig) then ("--config " +  '"' + configConfig + '"') else ""} \
      ~{true="--use_password" false="" useUsePassword} \
      ~{archiveArchive}
  >>>
}