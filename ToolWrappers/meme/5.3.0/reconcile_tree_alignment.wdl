version 1.0

task Reconciletreealignment {
  input {
    String input_tree
    String input_alignment
    String output_tree
    String output_alignment
  }
  command <<<
    reconcile_tree_alignment \
      ~{input_tree} \
      ~{input_alignment} \
      ~{output_tree} \
      ~{output_alignment}
  >>>
  runtime {
    docker: "quay.io/biocontainers/meme:5.3.0--py38pl526hc1f1133_0"
  }
  parameter_meta {
    input_tree: ""
    input_alignment: ""
    output_tree: ""
    output_alignment: ""
  }
  output {
    File out_stdout = stdout()
  }
}