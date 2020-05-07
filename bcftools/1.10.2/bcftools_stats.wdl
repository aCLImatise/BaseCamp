version 1.0

task BcftoolsStats {
  input {
    String afAfBins
    String afAfTag
    String collapseCollapse
    Boolean depthDepth
    String excludeExclude
    File exonsExons
    String applyApplyFilters
    File fastFastARef
    String includeInclude
    Boolean splitSplitById
    String regionsRegions
    File regionsRegionsFile
    String samplesSamples
    File samplesSamplesFile
    String targetsTargets
    File targetsTargetsFile
    Boolean userUserTsTv
    Int threadsThreads
    Boolean verboseVerbose
    String? aAVcfGz
    String? bvBvCfgZ
  }
  command <<<
    bcftools stats \
      ~{aAVcfGz} \
      ~{if defined(afAfBins) then ("--af-bins " +  '"' + afAfBins + '"') else ""} \
      ~{if defined(afAfTag) then ("--af-tag " +  '"' + afAfTag + '"') else ""} \
      ~{if defined(collapseCollapse) then ("--collapse " +  '"' + collapseCollapse + '"') else ""} \
      ~{true="--depth" false="" depthDepth} \
      ~{if defined(excludeExclude) then ("--exclude " +  '"' + excludeExclude + '"') else ""} \
      ~{if defined(exonsExons) then ("--exons " +  '"' + exonsExons + '"') else ""} \
      ~{if defined(applyApplyFilters) then ("--apply-filters " +  '"' + applyApplyFilters + '"') else ""} \
      ~{if defined(fastFastARef) then ("--fasta-ref " +  '"' + fastFastARef + '"') else ""} \
      ~{if defined(includeInclude) then ("--include " +  '"' + includeInclude + '"') else ""} \
      ~{true="--split-by-ID" false="" splitSplitById} \
      ~{if defined(regionsRegions) then ("--regions " +  '"' + regionsRegions + '"') else ""} \
      ~{if defined(regionsRegionsFile) then ("--regions-file " +  '"' + regionsRegionsFile + '"') else ""} \
      ~{if defined(samplesSamples) then ("--samples " +  '"' + samplesSamples + '"') else ""} \
      ~{if defined(samplesSamplesFile) then ("--samples-file " +  '"' + samplesSamplesFile + '"') else ""} \
      ~{if defined(targetsTargets) then ("--targets " +  '"' + targetsTargets + '"') else ""} \
      ~{if defined(targetsTargetsFile) then ("--targets-file " +  '"' + targetsTargetsFile + '"') else ""} \
      ~{true="--user-tstv" false="" userUserTsTv} \
      ~{if defined(threadsThreads) then ("--threads " +  '"' + threadsThreads + '"') else ""} \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{bvBvCfgZ}
  >>>
}