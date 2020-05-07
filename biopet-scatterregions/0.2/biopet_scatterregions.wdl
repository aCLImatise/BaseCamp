version 1.0

task BiopetScatterregions {
  input {
    String logLogLevel
    String outputOutputDir
    String referenceReferenceFastA
    String scatterScatterSize
    String regionsRegions
    Boolean notNotCombineContigs
    String maxMaxContigsInScatterJob
    String bamBamFile
    Boolean notNotSplitContigs
  }
  command <<<
    biopet-scatterregions \
      ~{if defined(logLogLevel) then ("--log_level " +  '"' + logLogLevel + '"') else ""} \
      ~{if defined(outputOutputDir) then ("--outputDir " +  '"' + outputOutputDir + '"') else ""} \
      ~{if defined(referenceReferenceFastA) then ("--referenceFasta " +  '"' + referenceReferenceFastA + '"') else ""} \
      ~{if defined(scatterScatterSize) then ("--scatterSize " +  '"' + scatterScatterSize + '"') else ""} \
      ~{if defined(regionsRegions) then ("--regions " +  '"' + regionsRegions + '"') else ""} \
      ~{true="--notCombineContigs" false="" notNotCombineContigs} \
      ~{if defined(maxMaxContigsInScatterJob) then ("--maxContigsInScatterJob " +  '"' + maxMaxContigsInScatterJob + '"') else ""} \
      ~{if defined(bamBamFile) then ("--bamFile " +  '"' + bamBamFile + '"') else ""} \
      ~{true="--notSplitContigs" false="" notNotSplitContigs}
  >>>
}