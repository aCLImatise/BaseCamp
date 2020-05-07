version 1.0

task MultiBamSummaryBEDFile {
  input {
    File bamBamFiles
    String outOutFilename
    File bedBed
    Int numberNumberOfProcessors
    Boolean verboseVerbose
    File outOutRawCounts
    File scalingScalingFactors
    Boolean extendExtendReads
    Boolean ignoreIgnoreDuplicates
    Int minMinMappingQuality
    Boolean centerCenterReads
    Int samSamFlagInclude
    Int samSamFlagExclude
    Int minMinFragmentLength
    Int maxMaxFragmentLength
    Boolean metaMetaGene
    String transcriptTranscriptId
    String exonExonId
    String transcriptTranscriptIdDesignator
    File? fileFile2bam
  }
  command <<<
    multiBamSummary BED-file \
      ~{fileFile2bam} \
      ~{if defined(bamBamFiles) then ("--bamfiles " +  '"' + bamBamFiles + '"') else ""} \
      ~{if defined(outOutFilename) then ("--outFileName " +  '"' + outOutFilename + '"') else ""} \
      ~{if defined(bedBed) then ("--BED " +  '"' + bedBed + '"') else ""} \
      ~{if defined(numberNumberOfProcessors) then ("--numberOfProcessors " +  '"' + numberNumberOfProcessors + '"') else ""} \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{if defined(outOutRawCounts) then ("--outRawCounts " +  '"' + outOutRawCounts + '"') else ""} \
      ~{if defined(scalingScalingFactors) then ("--scalingFactors " +  '"' + scalingScalingFactors + '"') else ""} \
      ~{true="--extendReads" false="" extendExtendReads} \
      ~{true="--ignoreDuplicates" false="" ignoreIgnoreDuplicates} \
      ~{if defined(minMinMappingQuality) then ("--minMappingQuality " +  '"' + minMinMappingQuality + '"') else ""} \
      ~{true="--centerReads" false="" centerCenterReads} \
      ~{if defined(samSamFlagInclude) then ("--samFlagInclude " +  '"' + samSamFlagInclude + '"') else ""} \
      ~{if defined(samSamFlagExclude) then ("--samFlagExclude " +  '"' + samSamFlagExclude + '"') else ""} \
      ~{if defined(minMinFragmentLength) then ("--minFragmentLength " +  '"' + minMinFragmentLength + '"') else ""} \
      ~{if defined(maxMaxFragmentLength) then ("--maxFragmentLength " +  '"' + maxMaxFragmentLength + '"') else ""} \
      ~{true="--metagene" false="" metaMetaGene} \
      ~{if defined(transcriptTranscriptId) then ("--transcriptID " +  '"' + transcriptTranscriptId + '"') else ""} \
      ~{if defined(exonExonId) then ("--exonID " +  '"' + exonExonId + '"') else ""} \
      ~{if defined(transcriptTranscriptIdDesignator) then ("--transcript_id_designator " +  '"' + transcriptTranscriptIdDesignator + '"') else ""}
  >>>
}