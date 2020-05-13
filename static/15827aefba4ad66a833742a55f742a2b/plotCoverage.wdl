version 1.0

task PlotCoverage {
  input {
    File bamBamFiles
    Int numberNumberOfProcessors
    Boolean verboseVerbose
    Boolean extendExtendReads
    Boolean ignoreIgnoreDuplicates
    Int minMinMappingQuality
    Boolean centerCenterReads
    Int samSamFlagInclude
    Int samSamFlagExclude
    Int minMinFragmentLength
    Int maxMaxFragmentLength
  }
  command <<<
    plotCoverage \
      ~{if defined(bamBamFiles) then ("--bamfiles " +  '"' + bamBamFiles + '"') else ""} \
      ~{if defined(numberNumberOfProcessors) then ("--numberOfProcessors " +  '"' + numberNumberOfProcessors + '"') else ""} \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{true="--extendReads" false="" extendExtendReads} \
      ~{true="--ignoreDuplicates" false="" ignoreIgnoreDuplicates} \
      ~{if defined(minMinMappingQuality) then ("--minMappingQuality " +  '"' + minMinMappingQuality + '"') else ""} \
      ~{true="--centerReads" false="" centerCenterReads} \
      ~{if defined(samSamFlagInclude) then ("--samFlagInclude " +  '"' + samSamFlagInclude + '"') else ""} \
      ~{if defined(samSamFlagExclude) then ("--samFlagExclude " +  '"' + samSamFlagExclude + '"') else ""} \
      ~{if defined(minMinFragmentLength) then ("--minFragmentLength " +  '"' + minMinFragmentLength + '"') else ""} \
      ~{if defined(maxMaxFragmentLength) then ("--maxFragmentLength " +  '"' + maxMaxFragmentLength + '"') else ""}
  >>>
}