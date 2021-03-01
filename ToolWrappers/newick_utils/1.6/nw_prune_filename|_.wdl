version 1.0

task NwPruneFilename {
  input {
    Boolean? node_labels_file
    Boolean? reverse_prune_nodes
  }
  command <<<
    nw_prune filename__ \
      ~{if (node_labels_file) then "-f" else ""} \
      ~{if (reverse_prune_nodes) then "-v" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    node_labels_file: ": node labels are in a file whose name is the second argument,\\ninstead of being passed  on the command line.\\nThere should be one label per line, and no leading or trailing\\nwhitespace."
    reverse_prune_nodes: ": reverse: prune nodes whose labels are NOT passed on the command\\nline. Inner nodes are not pruned. This allows pruning of trees\\nwith support values, which syntactically are node labels, withouti\\ninner nodes disappearing because their 'label' was not passed on\\nthe command line."
  }
  output {
    File out_stdout = stdout()
  }
}