version 1.0

task ChadoImportOntology {
  input {
    Boolean verboseVerbose
    String configConfig
    Boolean useUsePassword
    String inputInputFile
    String inputInputUrl
    String databaseDatabaseAuthority
    String formatFormat
    String? dbnameDbname
  }
  command <<<
    chado import ontology \
      ~{dbnameDbname} \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{if defined(configConfig) then ("--config " +  '"' + configConfig + '"') else ""} \
      ~{true="--use_password" false="" useUsePassword} \
      ~{if defined(inputInputFile) then ("--input_file " +  '"' + inputInputFile + '"') else ""} \
      ~{if defined(inputInputUrl) then ("--input_url " +  '"' + inputInputUrl + '"') else ""} \
      ~{if defined(databaseDatabaseAuthority) then ("--database_authority " +  '"' + databaseDatabaseAuthority + '"') else ""} \
      ~{if defined(formatFormat) then ("--format " +  '"' + formatFormat + '"') else ""}
  >>>
}