version 1.0

task SgaHaplotypeFilter {
  input {
    Boolean verboseVerbose
    File readsReads
    String referenceReference
    Boolean haploidHaploid
    String outOutPrefix
    String threadsThreads
  }
  command <<<
    sga haplotype-filter \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{if defined(readsReads) then ("--reads " +  '"' + readsReads + '"') else ""} \
      ~{if defined(referenceReference) then ("--reference " +  '"' + referenceReference + '"') else ""} \
      ~{true="--haploid" false="" haploidHaploid} \
      ~{if defined(outOutPrefix) then ("--out-prefix " +  '"' + outOutPrefix + '"') else ""} \
      ~{if defined(threadsThreads) then ("--threads " +  '"' + threadsThreads + '"') else ""}
  >>>
}