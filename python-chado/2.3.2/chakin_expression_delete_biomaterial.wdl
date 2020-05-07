version 1.0

task ChakinExpressionDeleteBiomaterial {
  input {
    String namesNames
    String idsIds
    String organismOrganismId
    String analysisAnalysisId
  }
  command <<<
    chakin expression delete_biomaterial \
      ~{if defined(namesNames) then ("--names " +  '"' + namesNames + '"') else ""} \
      ~{if defined(idsIds) then ("--ids " +  '"' + idsIds + '"') else ""} \
      ~{if defined(organismOrganismId) then ("--organism_id " +  '"' + organismOrganismId + '"') else ""} \
      ~{if defined(analysisAnalysisId) then ("--analysis_id " +  '"' + analysisAnalysisId + '"') else ""}
  >>>
}