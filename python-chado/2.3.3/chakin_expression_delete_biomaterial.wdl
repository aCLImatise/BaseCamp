version 1.0

task ChakinExpressionDeleteBiomaterial {
  input {
    String? names
    String? ids
    String? organism_id
    String? analysis_id
  }
  command <<<
    chakin expression delete_biomaterial \
      ~{if defined(names) then ("--names " +  '"' + names + '"') else ""} \
      ~{if defined(ids) then ("--ids " +  '"' + ids + '"') else ""} \
      ~{if defined(organism_id) then ("--organism_id " +  '"' + organism_id + '"') else ""} \
      ~{if defined(analysis_id) then ("--analysis_id " +  '"' + analysis_id + '"') else ""}
  >>>
  parameter_meta {
    names: "JSON list of biomaterial names to delete.  [default: []]"
    ids: "JSON list of biomaterial ids to delete.  [default: []]"
    organism_id: "Delete all biomaterial associated with this organism id."
    analysis_id: "Delete all biomaterial associated with this analysis id."
  }
}