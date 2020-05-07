version 1.0

task ConvertOrthofinderTreeIds.py {
  input {
    String? treeTreeInput
    String? sequenceSequenceIds
    String? speciesSpeciesIds
  }
  command <<<
    convert_orthofinder_tree_ids.py \
      ~{treeTreeInput} \
      ~{sequenceSequenceIds} \
      ~{speciesSpeciesIds}
  >>>
}