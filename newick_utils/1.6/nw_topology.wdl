version 1.0

task NwTopology {
  input {
    Boolean? keep_branch_lengths
    Boolean? discard_inner_node
    Boolean? discard_leaf_labels
  }
  command <<<
    nw_topology \
      ~{true="-b" false="" keep_branch_lengths} \
      ~{true="-I" false="" discard_inner_node} \
      ~{true="-L" false="" discard_leaf_labels}
  >>>
  parameter_meta {
    keep_branch_lengths: ": keep branch lengths"
    discard_inner_node: ": discard inner node labels"
    discard_leaf_labels: ": discard leaf labels"
  }
}