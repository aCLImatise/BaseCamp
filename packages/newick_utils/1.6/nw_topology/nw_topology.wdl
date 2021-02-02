version 1.0

task NwTopology {
  input {
    Boolean? keep_branch_lengths
    Boolean? discard_inner_node
    Boolean? discard_leaf_labels
  }
  command <<<
    nw_topology \
      ~{if (keep_branch_lengths) then "-b" else ""} \
      ~{if (discard_inner_node) then "-I" else ""} \
      ~{if (discard_leaf_labels) then "-L" else ""}
  >>>
  parameter_meta {
    keep_branch_lengths: ": keep branch lengths"
    discard_inner_node: ": discard inner node labels"
    discard_leaf_labels: ": discard leaf labels"
  }
  output {
    File out_stdout = stdout()
  }
}