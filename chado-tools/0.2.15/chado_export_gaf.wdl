version 1.0

task ChadoExportGaf {
  input {
    Boolean verboseVerbose
    String configConfig
    Boolean useUsePassword
    String outputOutputFile
    String abbreviationAbbreviation
    String databaseDatabaseAuthority
    String annotationAnnotationLevel
    Boolean includeIncludeObsolete
    String? dbnameDbname
  }
  command <<<
    chado export gaf \
      ~{dbnameDbname} \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{if defined(configConfig) then ("--config " +  '"' + configConfig + '"') else ""} \
      ~{true="--use_password" false="" useUsePassword} \
      ~{if defined(outputOutputFile) then ("--output_file " +  '"' + outputOutputFile + '"') else ""} \
      ~{if defined(abbreviationAbbreviation) then ("--abbreviation " +  '"' + abbreviationAbbreviation + '"') else ""} \
      ~{if defined(databaseDatabaseAuthority) then ("--database_authority " +  '"' + databaseDatabaseAuthority + '"') else ""} \
      ~{if defined(annotationAnnotationLevel) then ("--annotation_level " +  '"' + annotationAnnotationLevel + '"') else ""} \
      ~{true="--include_obsolete" false="" includeIncludeObsolete}
  >>>
}