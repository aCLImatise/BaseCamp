version 1.0

task SgaPreqc {
  input {
    Boolean verboseVerbose
    String threadsThreads
    Boolean simpleSimple
    String maxMaxContigLength
    File referenceReference
    Boolean diploidDiploidReferenceMode
    Boolean forceForceEm
  }
  command <<<
    sga preqc \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{if defined(threadsThreads) then ("--threads " +  '"' + threadsThreads + '"') else ""} \
      ~{true="--simple" false="" simpleSimple} \
      ~{if defined(maxMaxContigLength) then ("--max-contig-length " +  '"' + maxMaxContigLength + '"') else ""} \
      ~{if defined(referenceReference) then ("--reference " +  '"' + referenceReference + '"') else ""} \
      ~{true="--diploid-reference-mode" false="" diploidDiploidReferenceMode} \
      ~{true="--force-EM" false="" forceForceEm}
  >>>
}