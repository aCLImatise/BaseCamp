version 1.0

task TripailleExpressionGetBiomaterials {
  input {
    String? biomaterial_name
    String? provider_id
    String? biomaterial_id
    String? organism_id
    String? dbxref_id
  }
  command <<<
    tripaille expression get_biomaterials \
      ~{if defined(biomaterial_name) then ("--biomaterial_name " +  '"' + biomaterial_name + '"') else ""} \
      ~{if defined(provider_id) then ("--provider_id " +  '"' + provider_id + '"') else ""} \
      ~{if defined(biomaterial_id) then ("--biomaterial_id " +  '"' + biomaterial_id + '"') else ""} \
      ~{if defined(organism_id) then ("--organism_id " +  '"' + organism_id + '"') else ""} \
      ~{if defined(dbxref_id) then ("--dbxref_id " +  '"' + dbxref_id + '"') else ""}
  >>>
  parameter_meta {
    biomaterial_name: "Limit query to the selected biomaterial"
    provider_id: "Limit query to the selected provider"
    biomaterial_id: "Limit query to the selected biomaterial"
    organism_id: "Limit query to the selected organism"
    dbxref_id: "Limit query to the selected ref"
  }
  output {
    File out_stdout = stdout()
  }
}