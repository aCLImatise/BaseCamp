version 1.0

task GetSpeciesTaxids.sh {
  input {
    String? taxonomy_ids_input
    Boolean? scientific_name_common
  }
  command <<<
    get_species_taxids.sh \
      ~{if defined(taxonomy_ids_input) then ("-t " +  '"' + taxonomy_ids_input + '"') else ""} \
      ~{true="-n" false="" scientific_name_common}
  >>>
  parameter_meta {
    taxonomy_ids_input: "Get taxonomy IDs at or below input taxonomy ID level"
    scientific_name_common: "<Scientific Name, Common Name or Keyword> Get taxonomy information for organism"
  }
}