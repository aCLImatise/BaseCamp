version 1.0

task SgaGraphConcordance {
  input {
    Boolean verboseVerbose
    String referenceReference
    String threadsThreads
    File germlineGermline
  }
  command <<<
    sga graph-concordance \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{if defined(referenceReference) then ("--reference " +  '"' + referenceReference + '"') else ""} \
      ~{if defined(threadsThreads) then ("--threads " +  '"' + threadsThreads + '"') else ""} \
      ~{if defined(germlineGermline) then ("--germline " +  '"' + germlineGermline + '"') else ""}
  >>>
}