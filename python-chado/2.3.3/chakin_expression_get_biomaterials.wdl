version 1.0

task ChakinExpressionGetBiomaterials {
  input {
    Int? provider_id
    Int? biomaterial_id
    Int? organism_id
    String? biomaterial_name
    Int? analysis_id
  }
  command <<<
    chakin expression get_biomaterials \
      ~{if defined(provider_id) then ("--provider_id " +  '"' + provider_id + '"') else ""} \
      ~{if defined(biomaterial_id) then ("--biomaterial_id " +  '"' + biomaterial_id + '"') else ""} \
      ~{if defined(organism_id) then ("--organism_id " +  '"' + organism_id + '"') else ""} \
      ~{if defined(biomaterial_name) then ("--biomaterial_name " +  '"' + biomaterial_name + '"') else ""} \
      ~{if defined(analysis_id) then ("--analysis_id " +  '"' + analysis_id + '"') else ""}
  >>>
  parameter_meta {
    provider_id: "Limit query to the selected provider"
    biomaterial_id: "Limit query to the selected biomaterial id"
    organism_id: "Limit query to the selected organism"
    biomaterial_name: "Limit query to the selected biomaterial name"
    analysis_id: "Limit query to the selected analysis_id"
  }
}