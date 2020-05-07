version 1.0

task SgaCluster {
  input {
    Boolean verboseVerbose
    File outOut
    String minMinClusterSize
    String maxMaxClusterSize
    String minMinOverlap
    Boolean errorErrorRate
    String threadsThreads
    String iterationsIterations
    File extendExtend
    File limitLimit
    String? optionOption
    String? readsReads
  }
  command <<<
    sga cluster \
      ~{optionOption} \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{if defined(outOut) then ("--out " +  '"' + outOut + '"') else ""} \
      ~{if defined(minMinClusterSize) then ("--min-cluster-size " +  '"' + minMinClusterSize + '"') else ""} \
      ~{if defined(maxMaxClusterSize) then ("--max-cluster-size " +  '"' + maxMaxClusterSize + '"') else ""} \
      ~{if defined(minMinOverlap) then ("--min-overlap " +  '"' + minMinOverlap + '"') else ""} \
      ~{true="--error-rate" false="" errorErrorRate} \
      ~{if defined(threadsThreads) then ("--threads " +  '"' + threadsThreads + '"') else ""} \
      ~{if defined(iterationsIterations) then ("--iterations " +  '"' + iterationsIterations + '"') else ""} \
      ~{if defined(extendExtend) then ("--extend " +  '"' + extendExtend + '"') else ""} \
      ~{if defined(limitLimit) then ("--limit " +  '"' + limitLimit + '"') else ""} \
      ~{readsReads}
  >>>
}