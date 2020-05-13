version 1.0

task MakeCutMatrix {
  input {
    Boolean aggregateAggregateOutput
    Boolean discreteDiscreteOutput
    String binsBins
    String excludeExcludeFlags
    String includeIncludeFlags
    String cutCutPointOffset
    String parallelParallel
    String qualityQuality
    String regionRegionExtension
    Boolean verboseVerbose
    String? bamBamFileOfAlignedReads
    String? bedBedFileOfMotifs
  }
  command <<<
    make_cut_matrix \
      ~{bamBamFileOfAlignedReads} \
      ~{true="--aggregate-output" false="" aggregateAggregateOutput} \
      ~{true="--discrete-output" false="" discreteDiscreteOutput} \
      ~{if defined(binsBins) then ("--bins " +  '"' + binsBins + '"') else ""} \
      ~{if defined(excludeExcludeFlags) then ("--exclude-flags " +  '"' + excludeExcludeFlags + '"') else ""} \
      ~{if defined(includeIncludeFlags) then ("--include-flags " +  '"' + includeIncludeFlags + '"') else ""} \
      ~{if defined(cutCutPointOffset) then ("--cut-point-offset " +  '"' + cutCutPointOffset + '"') else ""} \
      ~{if defined(parallelParallel) then ("--parallel " +  '"' + parallelParallel + '"') else ""} \
      ~{if defined(qualityQuality) then ("--quality " +  '"' + qualityQuality + '"') else ""} \
      ~{if defined(regionRegionExtension) then ("--region-extension " +  '"' + regionRegionExtension + '"') else ""} \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{bedBedFileOfMotifs}
  >>>
}