version 1.0

task PlotEnrichment {
  input {
    File bamBamFiles
    File bedBed
    Int numberNumberOfProcessors
    Boolean verboseVerbose
    Boolean keepKeepExons
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
    plotEnrichment \
      ~{if defined(bamBamFiles) then ("--bamfiles " +  '"' + bamBamFiles + '"') else ""} \
      ~{if defined(bedBed) then ("--BED " +  '"' + bedBed + '"') else ""} \
      ~{if defined(numberNumberOfProcessors) then ("--numberOfProcessors " +  '"' + numberNumberOfProcessors + '"') else ""} \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{true="--keepExons" false="" keepKeepExons} \
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