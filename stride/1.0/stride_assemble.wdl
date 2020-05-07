version 1.0

task StrideAssemble {
  input {
    String readReadLength
    Boolean iI
    String prefixPrefix
    String kmKmErSize
    String kmKmErThreshold
    String maxMaxChimera
    String credibleCredibleOverlap
    String minMinBranchLength
    Boolean verboseVerbose
    String outOutPrefix
    String minMinOverlap
    Boolean transitiveTransitiveReduction
    String maxMaxEdges
  }
  command <<<
    stride assemble \
      ~{if defined(readReadLength) then ("--read-length " +  '"' + readReadLength + '"') else ""} \
      ~{true="-i" false="" iI} \
      ~{if defined(prefixPrefix) then ("--prefix " +  '"' + prefixPrefix + '"') else ""} \
      ~{if defined(kmKmErSize) then ("--kmer-size " +  '"' + kmKmErSize + '"') else ""} \
      ~{if defined(kmKmErThreshold) then ("--kmer-threshold " +  '"' + kmKmErThreshold + '"') else ""} \
      ~{if defined(maxMaxChimera) then ("--max-chimera " +  '"' + maxMaxChimera + '"') else ""} \
      ~{if defined(credibleCredibleOverlap) then ("--credible-overlap " +  '"' + credibleCredibleOverlap + '"') else ""} \
      ~{if defined(minMinBranchLength) then ("--min-branch-length " +  '"' + minMinBranchLength + '"') else ""} \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{if defined(outOutPrefix) then ("--out-prefix " +  '"' + outOutPrefix + '"') else ""} \
      ~{if defined(minMinOverlap) then ("--min-overlap " +  '"' + minMinOverlap + '"') else ""} \
      ~{true="--transitive-reduction" false="" transitiveTransitiveReduction} \
      ~{if defined(maxMaxEdges) then ("--max-edges " +  '"' + maxMaxEdges + '"') else ""}
  >>>
}