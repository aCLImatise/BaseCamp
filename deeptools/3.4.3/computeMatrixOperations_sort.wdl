version 1.0

task ComputeMatrixOperationsSort {
  input {
    String matrixMatrixFile
    String outOutFilename
    Array[String]+ regionsRegionsFilename
    String transcriptTranscriptId
    String transcriptTranscriptIdDesignator
    String? regionsRegions2bed
    String? regionsRegions3gtf
  }
  command <<<
    computeMatrixOperations sort \
      ~{regionsRegions2bed} \
      ~{if defined(matrixMatrixFile) then ("--matrixFile " +  '"' + matrixMatrixFile + '"') else ""} \
      ~{if defined(outOutFilename) then ("--outFileName " +  '"' + outOutFilename + '"') else ""} \
      ~{if defined(regionsRegionsFilename) then ("--regionsFileName " +  '"' + regionsRegionsFilename + '"') else ""} \
      ~{if defined(transcriptTranscriptId) then ("--transcriptID " +  '"' + transcriptTranscriptId + '"') else ""} \
      ~{if defined(transcriptTranscriptIdDesignator) then ("--transcript_id_designator " +  '"' + transcriptTranscriptIdDesignator + '"') else ""} \
      ~{regionsRegions3gtf}
  >>>
}