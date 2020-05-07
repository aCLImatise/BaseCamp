version 1.0

task StrideFmwalk {
  input {
    Boolean verboseVerbose
    String prefixPrefix
    File outfileOutfile
    String threadsThreads
    String algorithmAlgorithm
    String kmKmErSize
    String kmKmErThreshold
    String maxMaxLeaves
    String maxMaxInsertSize
    String minMinOverlap
    String maxMaxOverlap
  }
  command <<<
    stride fmwalk \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{if defined(prefixPrefix) then ("--prefix " +  '"' + prefixPrefix + '"') else ""} \
      ~{if defined(outfileOutfile) then ("--outfile " +  '"' + outfileOutfile + '"') else ""} \
      ~{if defined(threadsThreads) then ("--threads " +  '"' + threadsThreads + '"') else ""} \
      ~{if defined(algorithmAlgorithm) then ("--algorithm " +  '"' + algorithmAlgorithm + '"') else ""} \
      ~{if defined(kmKmErSize) then ("--kmer-size " +  '"' + kmKmErSize + '"') else ""} \
      ~{if defined(kmKmErThreshold) then ("--kmer-threshold " +  '"' + kmKmErThreshold + '"') else ""} \
      ~{if defined(maxMaxLeaves) then ("--max-leaves " +  '"' + maxMaxLeaves + '"') else ""} \
      ~{if defined(maxMaxInsertSize) then ("--max-insertsize " +  '"' + maxMaxInsertSize + '"') else ""} \
      ~{if defined(minMinOverlap) then ("--min-overlap " +  '"' + minMinOverlap + '"') else ""} \
      ~{if defined(maxMaxOverlap) then ("--max-overlap " +  '"' + maxMaxOverlap + '"') else ""}
  >>>
}