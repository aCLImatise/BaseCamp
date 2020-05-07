version 1.0

task Graphtyper {
  input {
    String verboseVerbose
    Boolean vVVerbose
    String? vcfVcfMerge
  }
  command <<<
    graphtyper \
      ~{vcfVcfMerge} \
      ~{if defined(verboseVerbose) then ("--verbose " +  '"' + verboseVerbose + '"') else ""} \
      ~{true="--vverbose" false="" vVVerbose}
  >>>
}