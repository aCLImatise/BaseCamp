version 1.0

task ConcoctRefine {
  input {
    String expansionExpansionFactor
    String seedSeed
    String threadsThreads
    String? clusterClusterFile
    String? originalOriginalData
    String? scgScgFile
  }
  command <<<
    concoct_refine \
      ~{clusterClusterFile} \
      ~{if defined(expansionExpansionFactor) then ("--expansion_factor " +  '"' + expansionExpansionFactor + '"') else ""} \
      ~{if defined(seedSeed) then ("--seed " +  '"' + seedSeed + '"') else ""} \
      ~{if defined(threadsThreads) then ("--threads " +  '"' + threadsThreads + '"') else ""} \
      ~{originalOriginalData} \
      ~{scgScgFile}
  >>>
}