version 1.0

task AncestralStateReconstruction.py {
  input {
    String inputInputTreeFp
    String inputInputTraitTableFp
  }
  command <<<
    ancestral_state_reconstruction.py \
      ~{if defined(inputInputTreeFp) then ("--input_tree_fp " +  '"' + inputInputTreeFp + '"') else ""} \
      ~{if defined(inputInputTraitTableFp) then ("--input_trait_table_fp " +  '"' + inputInputTraitTableFp + '"') else ""}
  >>>
}