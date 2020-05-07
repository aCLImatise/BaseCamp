version 1.0

task ComputeGCBias {
  input {
    String bamBamFile
    String effectiveEffectiveGenomeSize
    Boolean genomeGenome
    File gcGcBiasFrequenciesFile
    Int numberNumberOfProcessors
    Boolean verboseVerbose
    File biasBiasPlot
    Boolean plotPlotFileFormat
    Int regionRegionSize
    String? 21505700002150570000
    String? 200200
  }
  command <<<
    computeGCBias \
      ~{21505700002150570000} \
      ~{if defined(bamBamFile) then ("--bamfile " +  '"' + bamBamFile + '"') else ""} \
      ~{if defined(effectiveEffectiveGenomeSize) then ("--effectiveGenomeSize " +  '"' + effectiveEffectiveGenomeSize + '"') else ""} \
      ~{true="--genome" false="" genomeGenome} \
      ~{if defined(gcGcBiasFrequenciesFile) then ("--GCbiasFrequenciesFile " +  '"' + gcGcBiasFrequenciesFile + '"') else ""} \
      ~{if defined(numberNumberOfProcessors) then ("--numberOfProcessors " +  '"' + numberNumberOfProcessors + '"') else ""} \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{if defined(biasBiasPlot) then ("--biasPlot " +  '"' + biasBiasPlot + '"') else ""} \
      ~{true="--plotFileFormat" false="" plotPlotFileFormat} \
      ~{if defined(regionRegionSize) then ("--regionSize " +  '"' + regionRegionSize + '"') else ""} \
      ~{200200}
  >>>
}