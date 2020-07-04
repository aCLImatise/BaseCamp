version 1.0

task HalAppendCactusSubtree {
  input {
    String cactus_dot_ctw_oh_file
    String cactus_dot_fa_file
    String newick_tree
    String output_hal_path
  }
  command <<<
    halAppendCactusSubtree \
      ~{cactus_dot_ctw_oh_file} \
      ~{cactus_dot_fa_file} \
      ~{newick_tree} \
      ~{output_hal_path}
  >>>
  parameter_meta {
    cactus_dot_ctw_oh_file: ""
    cactus_dot_fa_file: ""
    newick_tree: ""
    output_hal_path: ""
  }
}