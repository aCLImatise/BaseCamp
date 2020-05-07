version 1.0

task ChakinExpressionGetBiomaterials {
  input {
    Int providerProviderId
    Int biomaterialBiomaterialId
    Int organismOrganismId
    String biomaterialBiomaterialName
    Int analysisAnalysisId
  }
  command <<<
    chakin expression get_biomaterials \
      ~{if defined(providerProviderId) then ("--provider_id " +  '"' + providerProviderId + '"') else ""} \
      ~{if defined(biomaterialBiomaterialId) then ("--biomaterial_id " +  '"' + biomaterialBiomaterialId + '"') else ""} \
      ~{if defined(organismOrganismId) then ("--organism_id " +  '"' + organismOrganismId + '"') else ""} \
      ~{if defined(biomaterialBiomaterialName) then ("--biomaterial_name " +  '"' + biomaterialBiomaterialName + '"') else ""} \
      ~{if defined(analysisAnalysisId) then ("--analysis_id " +  '"' + analysisAnalysisId + '"') else ""}
  >>>
}