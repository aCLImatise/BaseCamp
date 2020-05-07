version 1.0

task MultiBigwigSummaryBEDFile {
  input {
    File bwBwFiles
    String outOutFilename
    File bedBed
    Int numberNumberOfProcessors
    Boolean verboseVerbose
    File outOutRawCounts
    Boolean metaMetaGene
    String transcriptTranscriptId
    String exonExonId
    String transcriptTranscriptIdDesignator
    String deepDeepBlueUrl
    String userUserKey
    String deepDeepBlueTempdir
    Boolean deepDeepBlueKeepTemp
    File? fileFile2bw
  }
  command <<<
    multiBigwigSummary BED-file \
      ~{fileFile2bw} \
      ~{if defined(bwBwFiles) then ("--bwfiles " +  '"' + bwBwFiles + '"') else ""} \
      ~{if defined(outOutFilename) then ("--outFileName " +  '"' + outOutFilename + '"') else ""} \
      ~{if defined(bedBed) then ("--BED " +  '"' + bedBed + '"') else ""} \
      ~{if defined(numberNumberOfProcessors) then ("--numberOfProcessors " +  '"' + numberNumberOfProcessors + '"') else ""} \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{if defined(outOutRawCounts) then ("--outRawCounts " +  '"' + outOutRawCounts + '"') else ""} \
      ~{true="--metagene" false="" metaMetaGene} \
      ~{if defined(transcriptTranscriptId) then ("--transcriptID " +  '"' + transcriptTranscriptId + '"') else ""} \
      ~{if defined(exonExonId) then ("--exonID " +  '"' + exonExonId + '"') else ""} \
      ~{if defined(transcriptTranscriptIdDesignator) then ("--transcript_id_designator " +  '"' + transcriptTranscriptIdDesignator + '"') else ""} \
      ~{if defined(deepDeepBlueUrl) then ("--deepBlueURL " +  '"' + deepDeepBlueUrl + '"') else ""} \
      ~{if defined(userUserKey) then ("--userKey " +  '"' + userUserKey + '"') else ""} \
      ~{if defined(deepDeepBlueTempdir) then ("--deepBlueTempDir " +  '"' + deepDeepBlueTempdir + '"') else ""} \
      ~{true="--deepBlueKeepTemp" false="" deepDeepBlueKeepTemp}
  >>>
}