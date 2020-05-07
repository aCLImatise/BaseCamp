version 1.0

task Design.py {
  input {
    Boolean addAddReverseComplements
    Boolean expandExpandN
    String limitLimitTargetGenomes
    String limitLimitTargetGenomesRandomlyWithReplacement
    String clusterClusterAndDesignSeparately
    String clusterClusterFromFragments
    String filterFilterWithLshHamming
    String filterFilterWithLshMinHash
    Boolean coverCoverGroupingsSeparately
    String smallSmallSeqSkip
    String smallSmallSeqMin
    Int maxMaxNumProcesses
    String kmKmErProbeMapK
    Boolean useUseNativeDictWhenFindingTolerantCoverage
    Boolean debugDebug
    Boolean verboseVerbose
    String? datasetDataset
  }
  command <<<
    design.py \
      ~{datasetDataset} \
      ~{true="--add-reverse-complements" false="" addAddReverseComplements} \
      ~{true="--expand-n" false="" expandExpandN} \
      ~{if defined(limitLimitTargetGenomes) then ("--limit-target-genomes " +  '"' + limitLimitTargetGenomes + '"') else ""} \
      ~{if defined(limitLimitTargetGenomesRandomlyWithReplacement) then ("--limit-target-genomes-randomly-with-replacement " +  '"' + limitLimitTargetGenomesRandomlyWithReplacement + '"') else ""} \
      ~{if defined(clusterClusterAndDesignSeparately) then ("--cluster-and-design-separately " +  '"' + clusterClusterAndDesignSeparately + '"') else ""} \
      ~{if defined(clusterClusterFromFragments) then ("--cluster-from-fragments " +  '"' + clusterClusterFromFragments + '"') else ""} \
      ~{if defined(filterFilterWithLshHamming) then ("--filter-with-lsh-hamming " +  '"' + filterFilterWithLshHamming + '"') else ""} \
      ~{if defined(filterFilterWithLshMinHash) then ("--filter-with-lsh-minhash " +  '"' + filterFilterWithLshMinHash + '"') else ""} \
      ~{true="--cover-groupings-separately" false="" coverCoverGroupingsSeparately} \
      ~{if defined(smallSmallSeqSkip) then ("--small-seq-skip " +  '"' + smallSmallSeqSkip + '"') else ""} \
      ~{if defined(smallSmallSeqMin) then ("--small-seq-min " +  '"' + smallSmallSeqMin + '"') else ""} \
      ~{if defined(maxMaxNumProcesses) then ("--max-num-processes " +  '"' + maxMaxNumProcesses + '"') else ""} \
      ~{if defined(kmKmErProbeMapK) then ("--kmer-probe-map-k " +  '"' + kmKmErProbeMapK + '"') else ""} \
      ~{true="--use-native-dict-when-finding-tolerant-coverage" false="" useUseNativeDictWhenFindingTolerantCoverage} \
      ~{true="--debug" false="" debugDebug} \
      ~{true="--verbose" false="" verboseVerbose}
  >>>
}