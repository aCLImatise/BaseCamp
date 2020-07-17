version 1.0

task ReconcileTreeAlignment {
  input {
    String input_tree
    String input_alignment
    String output_tree
    String output_alignment
  }
  command <<<
    reconcile-tree-alignment \
      ~{input_tree} \
      ~{input_alignment} \
      ~{output_tree} \
      ~{output_alignment}
  >>>
  parameter_meta {
    input_tree: ""
    input_alignment: ""
    output_tree: ""
    output_alignment: ""
  }
}