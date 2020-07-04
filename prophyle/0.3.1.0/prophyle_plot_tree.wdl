version 1.0

task ProphylePlotTree.py {
  input {
    String? attribute_print_node
  }
  command <<<
    prophyle_plot_tree.py \
      ~{if defined(attribute_print_node) then ("-a " +  '"' + attribute_print_node + '"') else ""}
  >>>
  parameter_meta {
    attribute_print_node: "attribute to print with each node (e.g., sci_name)"
  }
}