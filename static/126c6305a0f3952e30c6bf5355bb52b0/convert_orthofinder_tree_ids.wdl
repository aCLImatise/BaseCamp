version 1.0

task ConvertOrthofinderTreeIds.pySpeciesIDs {
  input {
    String convert_ortho_finder_tree_ids_do_tpy
    String tree_input
    String sequence_ids
    String? species_ids
  }
  command <<<
    convert_orthofinder_tree_ids.py SpeciesIDs \
      ~{convert_ortho_finder_tree_ids_do_tpy} \
      ~{tree_input} \
      ~{sequence_ids} \
      ~{species_ids}
  >>>
  parameter_meta {
    convert_ortho_finder_tree_ids_do_tpy: ""
    tree_input: ""
    sequence_ids: ""
    species_ids: ""
  }
}