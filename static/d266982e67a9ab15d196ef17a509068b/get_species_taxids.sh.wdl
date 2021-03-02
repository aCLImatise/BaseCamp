version 1.0

task GetSpeciesTaxidssh {
  input {
    String? get_taxonomy_ids
    Boolean? scientific_name_common
  }
  command <<<
    get_species_taxids_sh \
      ~{if defined(get_taxonomy_ids) then ("-t " +  '"' + get_taxonomy_ids + '"') else ""} \
      ~{if (scientific_name_common) then "-n" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    get_taxonomy_ids: "Get taxonomy IDs at or below input taxonomy ID level"
    scientific_name_common: "<Scientific Name, Common Name or Keyword>\\nGet taxonomy information for organism\\n"
  }
  output {
    File out_stdout = stdout()
  }
}