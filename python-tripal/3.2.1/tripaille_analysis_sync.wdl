version 1.0

task TripailleAnalysisSync {
  input {
    String analysisAnalysis
    String analysisAnalysisId
    String jobJobName
    Boolean noNoWait
  }
  command <<<
    tripaille analysis sync \
      ~{if defined(analysisAnalysis) then ("--analysis " +  '"' + analysisAnalysis + '"') else ""} \
      ~{if defined(analysisAnalysisId) then ("--analysis_id " +  '"' + analysisAnalysisId + '"') else ""} \
      ~{if defined(jobJobName) then ("--job_name " +  '"' + jobJobName + '"') else ""} \
      ~{true="--no_wait" false="" noNoWait}
  >>>
}