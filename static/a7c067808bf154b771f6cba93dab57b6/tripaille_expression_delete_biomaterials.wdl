version 1.0

task TripailleExpressionDeleteBiomaterials {
  input {
    String namesNames
    String organismOrganismId
    String analysisAnalysisId
    String jobJobName
    Boolean noNoWait
  }
  command <<<
    tripaille expression delete_biomaterials \
      ~{if defined(namesNames) then ("--names " +  '"' + namesNames + '"') else ""} \
      ~{if defined(organismOrganismId) then ("--organism_id " +  '"' + organismOrganismId + '"') else ""} \
      ~{if defined(analysisAnalysisId) then ("--analysis_id " +  '"' + analysisAnalysisId + '"') else ""} \
      ~{if defined(jobJobName) then ("--job_name " +  '"' + jobJobName + '"') else ""} \
      ~{true="--no_wait" false="" noNoWait}
  >>>
}