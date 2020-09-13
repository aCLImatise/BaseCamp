version 1.0

task GetSpeciesTaxidssh {
  input {
    String? taxonomy_ids_input
    Boolean? scientific_name_common
  }
  command <<<
    get_species_taxids_sh \
      ~{if defined(taxonomy_ids_input) then ("-t " +  '"' + taxonomy_ids_input + '"') else ""} \
      ~{if (scientific_name_common) then "-n" else ""}
  >>>
  parameter_meta {
    taxonomy_ids_input: "Get taxonomy IDs at or below input taxonomy ID level"
    scientific_name_common: "<Scientific Name, Common Name or Keyword>\\nGet taxonomy information for organism\\n"
  }
  output {
    File out_stdout = stdout()
  }
}