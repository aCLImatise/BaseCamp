version 1.0

task BamCoverage {
  input {
    String bamBam
    File outOutFilename
    String outOutFileFormat
    Int numberNumberOfProcessors
    Boolean verboseVerbose
    String effectiveEffectiveGenomeSize
    String normalizeNormalizeUsing
    Boolean exactExactScaling
    Array[String]+ ignoreIgnoreForNormalization
    Boolean skipSkipNoncoveredRegions
    Int smoothSmoothLength
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
    bamCoverage \
      ~{if defined(bamBam) then ("--bam " +  '"' + bamBam + '"') else ""} \
      ~{if defined(outOutFilename) then ("--outFileName " +  '"' + outOutFilename + '"') else ""} \
      ~{if defined(outOutFileFormat) then ("--outFileFormat " +  '"' + outOutFileFormat + '"') else ""} \
      ~{if defined(numberNumberOfProcessors) then ("--numberOfProcessors " +  '"' + numberNumberOfProcessors + '"') else ""} \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{if defined(effectiveEffectiveGenomeSize) then ("--effectiveGenomeSize " +  '"' + effectiveEffectiveGenomeSize + '"') else ""} \
      ~{if defined(normalizeNormalizeUsing) then ("--normalizeUsing " +  '"' + normalizeNormalizeUsing + '"') else ""} \
      ~{true="--exactScaling" false="" exactExactScaling} \
      ~{if defined(ignoreIgnoreForNormalization) then ("--ignoreForNormalization " +  '"' + ignoreIgnoreForNormalization + '"') else ""} \
      ~{true="--skipNonCoveredRegions" false="" skipSkipNoncoveredRegions} \
      ~{if defined(smoothSmoothLength) then ("--smoothLength " +  '"' + smoothSmoothLength + '"') else ""} \
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