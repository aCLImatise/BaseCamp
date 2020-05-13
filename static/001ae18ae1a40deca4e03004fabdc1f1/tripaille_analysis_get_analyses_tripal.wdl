version 1.0

task TripailleAnalysisGetAnalysesTripal {
  input {
    Int analysisAnalysisId
  }
  command <<<
    tripaille analysis get_analyses_tripal \
      ~{if defined(analysisAnalysisId) then ("--analysis_id " +  '"' + analysisAnalysisId + '"') else ""}
  >>>
}