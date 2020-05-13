version 1.0

task CorrectGCBias {
  input {
    String bamBamFile
    String effectiveEffectiveGenomeSize
    String genomeGenome
    File gcGcBiasFrequenciesFile
    File correctedCorrectedFile
    Int binsizeBinsize
    String regionRegion
    Int numberNumberOfProcessors
    Boolean verboseVerbose
  }
  command <<<
    correctGCBias \
      ~{if defined(bamBamFile) then ("--bamfile " +  '"' + bamBamFile + '"') else ""} \
      ~{if defined(effectiveEffectiveGenomeSize) then ("--effectiveGenomeSize " +  '"' + effectiveEffectiveGenomeSize + '"') else ""} \
      ~{if defined(genomeGenome) then ("--genome " +  '"' + genomeGenome + '"') else ""} \
      ~{if defined(gcGcBiasFrequenciesFile) then ("--GCbiasFrequenciesFile " +  '"' + gcGcBiasFrequenciesFile + '"') else ""} \
      ~{if defined(correctedCorrectedFile) then ("--correctedFile " +  '"' + correctedCorrectedFile + '"') else ""} \
      ~{if defined(binsizeBinsize) then ("--binSize " +  '"' + binsizeBinsize + '"') else ""} \
      ~{if defined(regionRegion) then ("--region " +  '"' + regionRegion + '"') else ""} \
      ~{if defined(numberNumberOfProcessors) then ("--numberOfProcessors " +  '"' + numberNumberOfProcessors + '"') else ""} \
      ~{true="--verbose" false="" verboseVerbose}
  >>>
}