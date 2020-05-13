version 1.0

task ChadoExecuteAuditBackup {
  input {
    Boolean verboseVerbose
    String configConfig
    Boolean useUsePassword
    String dateDate
    String? dbnameDbname
  }
  command <<<
    chado execute audit_backup \
      ~{dbnameDbname} \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{if defined(configConfig) then ("--config " +  '"' + configConfig + '"') else ""} \
      ~{true="--use_password" false="" useUsePassword} \
      ~{if defined(dateDate) then ("--date " +  '"' + dateDate + '"') else ""}
  >>>
}