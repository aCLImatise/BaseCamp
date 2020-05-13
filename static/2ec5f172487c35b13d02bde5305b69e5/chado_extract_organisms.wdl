version 1.0

task ChadoExtractOrganisms {
  input {
    Boolean verboseVerbose
    String configConfig
    Boolean useUsePassword
    Boolean includeIncludeHeader
    String delimiterDelimiter
    String outputOutputFile
    String formatFormat
    Boolean publicPublicOnly
    String? dbnameDbname
  }
  command <<<
    chado extract organisms \
      ~{dbnameDbname} \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{if defined(configConfig) then ("--config " +  '"' + configConfig + '"') else ""} \
      ~{true="--use_password" false="" useUsePassword} \
      ~{true="--include_header" false="" includeIncludeHeader} \
      ~{if defined(delimiterDelimiter) then ("--delimiter " +  '"' + delimiterDelimiter + '"') else ""} \
      ~{if defined(outputOutputFile) then ("--output_file " +  '"' + outputOutputFile + '"') else ""} \
      ~{if defined(formatFormat) then ("--format " +  '"' + formatFormat + '"') else ""} \
      ~{true="--public_only" false="" publicPublicOnly}
  >>>
}