version 1.0

task ChadoAdminSetup {
  input {
    Boolean verboseVerbose
    String configConfig
    Boolean useUsePassword
    String schemaSchema
    String schemaSchemaFile
    String? dbnameDbname
  }
  command <<<
    chado admin setup \
      ~{dbnameDbname} \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{if defined(configConfig) then ("--config " +  '"' + configConfig + '"') else ""} \
      ~{true="--use_password" false="" useUsePassword} \
      ~{if defined(schemaSchema) then ("--schema " +  '"' + schemaSchema + '"') else ""} \
      ~{if defined(schemaSchemaFile) then ("--schema_file " +  '"' + schemaSchemaFile + '"') else ""}
  >>>
}