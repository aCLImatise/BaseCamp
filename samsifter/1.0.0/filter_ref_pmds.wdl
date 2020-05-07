version 1.0

task FilterRefPmds {
  input {
    String inputInput
    String discardDiscard
    Boolean verboseVerbose
    Boolean debugDebug
    Boolean modifyModify
    String pmPmDs
    String readsReadsPerc
    String readsReadsTotal
  }
  command <<<
    filter_ref_pmds \
      ~{if defined(inputInput) then ("--input " +  '"' + inputInput + '"') else ""} \
      ~{if defined(discardDiscard) then ("--discard " +  '"' + discardDiscard + '"') else ""} \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{true="--debug" false="" debugDebug} \
      ~{true="--modify" false="" modifyModify} \
      ~{if defined(pmPmDs) then ("--pmds " +  '"' + pmPmDs + '"') else ""} \
      ~{if defined(readsReadsPerc) then ("--reads_perc " +  '"' + readsReadsPerc + '"') else ""} \
      ~{if defined(readsReadsTotal) then ("--reads_total " +  '"' + readsReadsTotal + '"') else ""}
  >>>
}