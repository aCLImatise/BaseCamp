version 1.0

task SgaFmMerge {
  input {
    Boolean verboseVerbose
    String prefixPrefix
    String threadsThreads
    String minMinOverlap
    File outfileOutfile
  }
  command <<<
    sga fm-merge \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{if defined(prefixPrefix) then ("--prefix " +  '"' + prefixPrefix + '"') else ""} \
      ~{if defined(threadsThreads) then ("--threads " +  '"' + threadsThreads + '"') else ""} \
      ~{if defined(minMinOverlap) then ("--min-overlap " +  '"' + minMinOverlap + '"') else ""} \
      ~{if defined(outfileOutfile) then ("--outfile " +  '"' + outfileOutfile + '"') else ""}
  >>>
}