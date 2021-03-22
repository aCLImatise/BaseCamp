version 1.0

task GetSpeciesTaxidsshbak {
  input {
    String? get_taxonomy_ids
    Boolean? scientific_name_common
  }
  command <<<
    get_species_taxids_sh_bak \
      ~{if defined(get_taxonomy_ids) then ("-t " +  '"' + get_taxonomy_ids + '"') else ""} \
      ~{if (scientific_name_common) then "-n" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/blast:2.11.0--pl526he19e7b1_0"
  }
  parameter_meta {
    get_taxonomy_ids: "Get taxonomy IDs at or below input taxonomy ID level"
    scientific_name_common: "<Scientific Name, Common Name or Keyword>\\nGet taxonomy information for organism\\n"
  }
  output {
    File out_stdout = stdout()
  }
}