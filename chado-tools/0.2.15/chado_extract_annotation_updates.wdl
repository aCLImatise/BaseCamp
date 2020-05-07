version 1.0

task ChadoExtractAnnotationUpdates {
  input {
    Boolean verboseVerbose
    String configConfig
    Boolean useUsePassword
    Boolean includeIncludeHeader
    String delimiterDelimiter
    String outputOutputFile
    String formatFormat
    String abbreviationAbbreviation
    String startStartDate
    String endEndDate
    Boolean publicPublicOnly
    String? dbnameDbname
  }
  command <<<
    chado extract annotation_updates \
      ~{dbnameDbname} \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{if defined(configConfig) then ("--config " +  '"' + configConfig + '"') else ""} \
      ~{true="--use_password" false="" useUsePassword} \
      ~{true="--include_header" false="" includeIncludeHeader} \
      ~{if defined(delimiterDelimiter) then ("--delimiter " +  '"' + delimiterDelimiter + '"') else ""} \
      ~{if defined(outputOutputFile) then ("--output_file " +  '"' + outputOutputFile + '"') else ""} \
      ~{if defined(formatFormat) then ("--format " +  '"' + formatFormat + '"') else ""} \
      ~{if defined(abbreviationAbbreviation) then ("--abbreviation " +  '"' + abbreviationAbbreviation + '"') else ""} \
      ~{if defined(startStartDate) then ("--start_date " +  '"' + startStartDate + '"') else ""} \
      ~{if defined(endEndDate) then ("--end_date " +  '"' + endEndDate + '"') else ""} \
      ~{true="--public_only" false="" publicPublicOnly}
  >>>
}