version 1.0

task ChadoQuery {
  input {
    Boolean verboseVerbose
    String configConfig
    Boolean useUsePassword
    Boolean includeIncludeHeader
    String delimiterDelimiter
    String outputOutputFile
    String formatFormat
    String inputInputFile
    String queryQuery
    String? dbnameDbname
  }
  command <<<
    chado query \
      ~{dbnameDbname} \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{if defined(configConfig) then ("--config " +  '"' + configConfig + '"') else ""} \
      ~{true="--use_password" false="" useUsePassword} \
      ~{true="--include_header" false="" includeIncludeHeader} \
      ~{if defined(delimiterDelimiter) then ("--delimiter " +  '"' + delimiterDelimiter + '"') else ""} \
      ~{if defined(outputOutputFile) then ("--output_file " +  '"' + outputOutputFile + '"') else ""} \
      ~{if defined(formatFormat) then ("--format " +  '"' + formatFormat + '"') else ""} \
      ~{if defined(inputInputFile) then ("--input_file " +  '"' + inputInputFile + '"') else ""} \
      ~{if defined(queryQuery) then ("--query " +  '"' + queryQuery + '"') else ""}
  >>>
}