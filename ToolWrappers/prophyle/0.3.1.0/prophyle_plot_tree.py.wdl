version 1.0

task ProphylePlotTreepy {
  input {
    String? attribute_print_node
  }
  command <<<
    prophyle_plot_tree_py \
      ~{if defined(attribute_print_node) then ("-a " +  '"' + attribute_print_node + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    attribute_print_node: "attribute to print with each node (e.g., sci_name)"
  }
  output {
    File out_stdout = stdout()
  }
}