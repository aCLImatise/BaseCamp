version 1.0

task ChakinExpressionDeleteBiomaterials {
  input {
    String namesNames
    String idsIds
    Int organismOrganismId
    Int analysisAnalysisId
  }
  command <<<
    chakin expression delete_biomaterials \
      ~{if defined(namesNames) then ("--names " +  '"' + namesNames + '"') else ""} \
      ~{if defined(idsIds) then ("--ids " +  '"' + idsIds + '"') else ""} \
      ~{if defined(organismOrganismId) then ("--organism_id " +  '"' + organismOrganismId + '"') else ""} \
      ~{if defined(analysisAnalysisId) then ("--analysis_id " +  '"' + analysisAnalysisId + '"') else ""}
  >>>
}