version 1.0

task ChadoAdminRevoke {
  input {
    Boolean verboseVerbose
    String configConfig
    Boolean useUsePassword
    String roleRole
    String schemaSchema
    String? dbnameDbname
  }
  command <<<
    chado admin revoke \
      ~{dbnameDbname} \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{if defined(configConfig) then ("--config " +  '"' + configConfig + '"') else ""} \
      ~{true="--use_password" false="" useUsePassword} \
      ~{if defined(roleRole) then ("--role " +  '"' + roleRole + '"') else ""} \
      ~{if defined(schemaSchema) then ("--schema " +  '"' + schemaSchema + '"') else ""}
  >>>
}