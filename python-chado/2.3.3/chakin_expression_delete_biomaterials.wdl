version 1.0

task ChakinExpressionDeleteBiomaterials {
  input {
    String? names
    String? ids
    Int? organism_id
    Int? analysis_id
  }
  command <<<
    chakin expression delete_biomaterials \
      ~{if defined(names) then ("--names " +  '"' + names + '"') else ""} \
      ~{if defined(ids) then ("--ids " +  '"' + ids + '"') else ""} \
      ~{if defined(organism_id) then ("--organism_id " +  '"' + organism_id + '"') else ""} \
      ~{if defined(analysis_id) then ("--analysis_id " +  '"' + analysis_id + '"') else ""}
  >>>
  parameter_meta {
    names: "JSON list of biomaterial names to delete."
    ids: "JSON list of biomaterial ids to delete."
    organism_id: "Delete all biomaterial associated with this organism id."
    analysis_id: "Delete all biomaterial associated with this analysis id."
  }
}