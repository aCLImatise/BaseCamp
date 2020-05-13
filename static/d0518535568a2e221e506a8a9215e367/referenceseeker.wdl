version 1.0

task Referenceseeker {
  input {
    String crgCrg
    String aniAni
    String conservedConservedDna
    Boolean unfilteredUnfiltered
    Boolean bidirectionalBidirectional
    Boolean verboseVerbose
    String threadsThreads
  }
  command <<<
    referenceseeker \
      ~{if defined(crgCrg) then ("--crg " +  '"' + crgCrg + '"') else ""} \
      ~{if defined(aniAni) then ("--ani " +  '"' + aniAni + '"') else ""} \
      ~{if defined(conservedConservedDna) then ("--conserved-dna " +  '"' + conservedConservedDna + '"') else ""} \
      ~{true="--unfiltered" false="" unfilteredUnfiltered} \
      ~{true="--bidirectional" false="" bidirectionalBidirectional} \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{if defined(threadsThreads) then ("--threads " +  '"' + threadsThreads + '"') else ""}
  >>>
}