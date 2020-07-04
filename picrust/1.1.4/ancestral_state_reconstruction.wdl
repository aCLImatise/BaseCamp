version 1.0

task AncestralStateReconstruction.py {
  input {
    String? input_tree_fp
    String? input_trait_table_fp
  }
  command <<<
    ancestral_state_reconstruction.py \
      ~{if defined(input_tree_fp) then ("--input_tree_fp " +  '"' + input_tree_fp + '"') else ""} \
      ~{if defined(input_trait_table_fp) then ("--input_trait_table_fp " +  '"' + input_trait_table_fp + '"') else ""}
  >>>
  parameter_meta {
    input_tree_fp: "the tree to use for ASR [REQUIRED]"
    input_trait_table_fp: "the trait table to use for ASR [REQUIRED]"
  }
}