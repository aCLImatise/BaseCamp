version 1.0

task EnrichSummary {
  input {
    String inputInput
    String databaseDatabase
    String indexIndex
    String sortSort
    Boolean verboseVerbose
    Boolean debugDebug
  }
  command <<<
    enrich_summary \
      ~{if defined(inputInput) then ("--input " +  '"' + inputInput + '"') else ""} \
      ~{if defined(databaseDatabase) then ("--database " +  '"' + databaseDatabase + '"') else ""} \
      ~{if defined(indexIndex) then ("--index " +  '"' + indexIndex + '"') else ""} \
      ~{if defined(sortSort) then ("--sort " +  '"' + sortSort + '"') else ""} \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{true="--debug" false="" debugDebug}
  >>>
}