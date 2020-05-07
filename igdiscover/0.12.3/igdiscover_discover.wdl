version 1.0

task IgdiscoverDiscover {
  input {
    String threadsThreads
    String seedSeed
    String consensusConsensusThreshold
    String geneGene
    String limitLimit
    String leftLeft
    String rightRight
    String windowWindowWidth
    Boolean noNoCluster
    String clusterClusterExact
    Int maxMaxNBases
    String subsampleSubsample
    Boolean ignoreIgnoreJ
    String exactExactCopies
    String dDEvalue
    String dDCoverage
    String cloCloNoTypeDiff
    Directory tableTableOutput
    String databaseDatabase
    File readReadNames
  }
  command <<<
    igdiscover discover \
      ~{if defined(threadsThreads) then ("--threads " +  '"' + threadsThreads + '"') else ""} \
      ~{if defined(seedSeed) then ("--seed " +  '"' + seedSeed + '"') else ""} \
      ~{if defined(consensusConsensusThreshold) then ("--consensus-threshold " +  '"' + consensusConsensusThreshold + '"') else ""} \
      ~{if defined(geneGene) then ("--gene " +  '"' + geneGene + '"') else ""} \
      ~{if defined(limitLimit) then ("--limit " +  '"' + limitLimit + '"') else ""} \
      ~{if defined(leftLeft) then ("--left " +  '"' + leftLeft + '"') else ""} \
      ~{if defined(rightRight) then ("--right " +  '"' + rightRight + '"') else ""} \
      ~{if defined(windowWindowWidth) then ("--window-width " +  '"' + windowWindowWidth + '"') else ""} \
      ~{true="--no-cluster" false="" noNoCluster} \
      ~{if defined(clusterClusterExact) then ("--cluster-exact " +  '"' + clusterClusterExact + '"') else ""} \
      ~{if defined(maxMaxNBases) then ("--max-n-bases " +  '"' + maxMaxNBases + '"') else ""} \
      ~{if defined(subsampleSubsample) then ("--subsample " +  '"' + subsampleSubsample + '"') else ""} \
      ~{true="--ignore-J" false="" ignoreIgnoreJ} \
      ~{if defined(exactExactCopies) then ("--exact-copies " +  '"' + exactExactCopies + '"') else ""} \
      ~{if defined(dDEvalue) then ("--d-evalue " +  '"' + dDEvalue + '"') else ""} \
      ~{if defined(dDCoverage) then ("--d-coverage " +  '"' + dDCoverage + '"') else ""} \
      ~{if defined(cloCloNoTypeDiff) then ("--clonotype-diff " +  '"' + cloCloNoTypeDiff + '"') else ""} \
      ~{if defined(tableTableOutput) then ("--table-output " +  '"' + tableTableOutput + '"') else ""} \
      ~{if defined(databaseDatabase) then ("--database " +  '"' + databaseDatabase + '"') else ""} \
      ~{if defined(readReadNames) then ("--read-names " +  '"' + readReadNames + '"') else ""}
  >>>
}