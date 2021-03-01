version 1.0

task PhylorankScaleTreeOutputTree {
  input {
    String phylo_rank
    String scale_tree
    String input_tree
    String output_tree
  }
  command <<<
    phylorank scale_tree output_tree \
      ~{phylo_rank} \
      ~{scale_tree} \
      ~{input_tree} \
      ~{output_tree}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    phylo_rank: ""
    scale_tree: ""
    input_tree: ""
    output_tree: ""
  }
  output {
    File out_stdout = stdout()
  }
}