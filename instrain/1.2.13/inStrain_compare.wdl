version 1.0

task InStrainCompare {
  input {
    Boolean iI
    String outputOutput
    String processesProcesses
    Boolean debugDebug
    Int minMinCov
    Int minMinFreq
    String fdrFdr
    String scaffoldsScaffolds
    Boolean storeStoreCoverageOverlap
    Boolean storeStoreMismatchLocations
    Boolean includeIncludeSelfComparisons
    Boolean greedyGreedyClustering
    String gGAni
    String gGCov
    String gGMm
  }
  command <<<
    inStrain compare \
      ~{true="-i" false="" iI} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{if defined(processesProcesses) then ("--processes " +  '"' + processesProcesses + '"') else ""} \
      ~{true="--debug" false="" debugDebug} \
      ~{if defined(minMinCov) then ("--min_cov " +  '"' + minMinCov + '"') else ""} \
      ~{if defined(minMinFreq) then ("--min_freq " +  '"' + minMinFreq + '"') else ""} \
      ~{if defined(fdrFdr) then ("--fdr " +  '"' + fdrFdr + '"') else ""} \
      ~{if defined(scaffoldsScaffolds) then ("--scaffolds " +  '"' + scaffoldsScaffolds + '"') else ""} \
      ~{true="--store_coverage_overlap" false="" storeStoreCoverageOverlap} \
      ~{true="--store_mismatch_locations" false="" storeStoreMismatchLocations} \
      ~{true="--include_self_comparisons" false="" includeIncludeSelfComparisons} \
      ~{true="--greedy_clustering" false="" greedyGreedyClustering} \
      ~{if defined(gGAni) then ("--g_ani " +  '"' + gGAni + '"') else ""} \
      ~{if defined(gGCov) then ("--g_cov " +  '"' + gGCov + '"') else ""} \
      ~{if defined(gGMm) then ("--g_mm " +  '"' + gGMm + '"') else ""}
  >>>
}