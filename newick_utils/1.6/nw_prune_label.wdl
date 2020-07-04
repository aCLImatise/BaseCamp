version 1.0

task NwPruneLabel {
  input {
    Boolean? node_labels_file
    Boolean? reverse_prune_nodes
  }
  command <<<
    nw_prune label \
      ~{true="-f" false="" node_labels_file} \
      ~{true="-v" false="" reverse_prune_nodes}
  >>>
  parameter_meta {
    node_labels_file: ": node labels are in a file whose name is the second argument, instead of being passed  on the command line. There should be one label per line, and no leading or trailing whitespace."
    reverse_prune_nodes: ": reverse: prune nodes whose labels are NOT passed on the command line. Inner nodes are not pruned. This allows pruning of trees with support values, which syntactically are node labels, withouti inner nodes disappearing because their 'label' was not passed on the command line."
  }
}