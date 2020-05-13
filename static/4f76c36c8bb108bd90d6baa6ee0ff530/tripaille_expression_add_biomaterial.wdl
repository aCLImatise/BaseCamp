version 1.0

task TripailleExpressionAddBiomaterial {
  input {
    String analysisAnalysisId
    Boolean noNoWait
  }
  command <<<
    tripaille expression add_biomaterial \
      ~{if defined(analysisAnalysisId) then ("--analysis_id " +  '"' + analysisAnalysisId + '"') else ""} \
      ~{true="--no_wait" false="" noNoWait}
  >>>
}