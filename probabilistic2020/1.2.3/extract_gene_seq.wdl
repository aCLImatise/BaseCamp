version 1.0

task ExtractGeneSeq {
  input {
    String logLogLevel
    String logLog
    Boolean verboseVerbose
    String inputInput
    String bedBed
    String outputOutput
  }
  command <<<
    extract_gene_seq \
      ~{if defined(logLogLevel) then ("--log-level " +  '"' + logLogLevel + '"') else ""} \
      ~{if defined(logLog) then ("--log " +  '"' + logLog + '"') else ""} \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{if defined(inputInput) then ("--input " +  '"' + inputInput + '"') else ""} \
      ~{if defined(bedBed) then ("--bed " +  '"' + bedBed + '"') else ""} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""}
  >>>
}