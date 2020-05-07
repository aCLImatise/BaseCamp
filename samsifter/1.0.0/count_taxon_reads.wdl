version 1.0

task CountTaxonReads {
  input {
    String inputInput
    String prefixPrefix
    Boolean verboseVerbose
    Boolean debugDebug
  }
  command <<<
    count_taxon_reads \
      ~{if defined(inputInput) then ("--input " +  '"' + inputInput + '"') else ""} \
      ~{if defined(prefixPrefix) then ("--prefix " +  '"' + prefixPrefix + '"') else ""} \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{true="--debug" false="" debugDebug}
  >>>
}