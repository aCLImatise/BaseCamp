version 1.0

task ComputeMatrixReferencePoint {
  input {
    Array[File]+ regionsRegionsFilename
    Array[File]+ scoreScoreFilename
    Array[String]+ samplesSamplesLabel
    Boolean smartSmartLabels
    Boolean quietQuiet
    Boolean verboseVerbose
    String scaleScale
    Int numberNumberOfProcessors
    Boolean metaMetaGene
    String transcriptTranscriptId
    String exonExonId
    String transcriptTranscriptIdDesignator
    String deepDeepBlueUrl
    String userUserKey
    String deepDeepBlueTempdir
    Boolean deepDeepBlueKeepTemp
  }
  command <<<
    computeMatrix reference-point \
      ~{if defined(regionsRegionsFilename) then ("--regionsFileName " +  '"' + regionsRegionsFilename + '"') else ""} \
      ~{if defined(scoreScoreFilename) then ("--scoreFileName " +  '"' + scoreScoreFilename + '"') else ""} \
      ~{if defined(samplesSamplesLabel) then ("--samplesLabel " +  '"' + samplesSamplesLabel + '"') else ""} \
      ~{true="--smartLabels" false="" smartSmartLabels} \
      ~{true="--quiet" false="" quietQuiet} \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{if defined(scaleScale) then ("--scale " +  '"' + scaleScale + '"') else ""} \
      ~{if defined(numberNumberOfProcessors) then ("--numberOfProcessors " +  '"' + numberNumberOfProcessors + '"') else ""} \
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