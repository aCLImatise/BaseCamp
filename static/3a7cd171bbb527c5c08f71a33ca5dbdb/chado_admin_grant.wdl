version 1.0

task ChadoAdminGrant {
  input {
    Boolean verboseVerbose
    String configConfig
    Boolean useUsePassword
    String roleRole
    String schemaSchema
    Boolean writeWrite
    String? dbnameDbname
  }
  command <<<
    chado admin grant \
      ~{dbnameDbname} \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{if defined(configConfig) then ("--config " +  '"' + configConfig + '"') else ""} \
      ~{true="--use_password" false="" useUsePassword} \
      ~{if defined(roleRole) then ("--role " +  '"' + roleRole + '"') else ""} \
      ~{if defined(schemaSchema) then ("--schema " +  '"' + schemaSchema + '"') else ""} \
      ~{true="--write" false="" writeWrite}
  >>>
}