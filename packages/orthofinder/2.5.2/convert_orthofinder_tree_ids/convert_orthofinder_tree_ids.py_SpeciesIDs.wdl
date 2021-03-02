version 1.0

task ConvertOrthofinderTreeIdspySpeciesIDs {
  input {
    String convert_ortho_finder_tree_ids_do_tpy
    String tree_input
    String sequence_ids
    String? species_ids
  }
  command <<<
    convert_orthofinder_tree_ids_py SpeciesIDs \
      ~{convert_ortho_finder_tree_ids_do_tpy} \
      ~{tree_input} \
      ~{sequence_ids} \
      ~{species_ids}
  >>>
  runtime {
    docker: "quay.io/biocontainers/orthofinder:2.5.2--0"
  }
  parameter_meta {
    convert_ortho_finder_tree_ids_do_tpy: ""
    tree_input: ""
    sequence_ids: ""
    species_ids: ""
  }
  output {
    File out_stdout = stdout()
  }
}