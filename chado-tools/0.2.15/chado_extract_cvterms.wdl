version 1.0

task ChadoExtractCvterms {
  input {
    Boolean verboseVerbose
    String configConfig
    Boolean useUsePassword
    Boolean includeIncludeHeader
    String delimiterDelimiter
    String outputOutputFile
    String formatFormat
    String vocabularyVocabulary
    String databaseDatabase
    String? dbnameDbname
  }
  command <<<
    chado extract cvterms \
      ~{dbnameDbname} \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{if defined(configConfig) then ("--config " +  '"' + configConfig + '"') else ""} \
      ~{true="--use_password" false="" useUsePassword} \
      ~{true="--include_header" false="" includeIncludeHeader} \
      ~{if defined(delimiterDelimiter) then ("--delimiter " +  '"' + delimiterDelimiter + '"') else ""} \
      ~{if defined(outputOutputFile) then ("--output_file " +  '"' + outputOutputFile + '"') else ""} \
      ~{if defined(formatFormat) then ("--format " +  '"' + formatFormat + '"') else ""} \
      ~{if defined(vocabularyVocabulary) then ("--vocabulary " +  '"' + vocabularyVocabulary + '"') else ""} \
      ~{if defined(databaseDatabase) then ("--database " +  '"' + databaseDatabase + '"') else ""}
  >>>
}