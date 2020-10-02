version 1.0

task Womtool {
  input {
    File? inputs
    String? jar
    String java
    String? validate_vertical_line_inputs_vertical_line_parse_vertical_line_highlight_vertical_line_graph_vertical_line_upgrade_vertical_line_wom_graph
    String workflow_source
  }
  command <<<
    womtool \
      ~{java} \
      ~{validate_vertical_line_inputs_vertical_line_parse_vertical_line_highlight_vertical_line_graph_vertical_line_upgrade_vertical_line_wom_graph} \
      ~{workflow_source} \
      ~{if defined(inputs) then ("--inputs " +  '"' + inputs + '"') else ""} \
      ~{if defined(jar) then ("-jar " +  '"' + jar + '"') else ""}
  >>>
  parameter_meta {
    inputs: "Workflow inputs file.\\n-h, --highlight-mode <value>\\nHighlighting mode, one of 'html', 'console' (used only with 'highlight' command)\\n-o, --optional-inputs <value>\\nIf set, optional inputs are also included in the inputs set. Default is 'true' (used only with the inputs command)\\n-l, --list-dependencies  An optional flag to list files referenced in import statements (used only with 'validate' command)\\n--help\\n--version"
    jar: ""
    java: ""
    validate_vertical_line_inputs_vertical_line_parse_vertical_line_highlight_vertical_line_graph_vertical_line_upgrade_vertical_line_wom_graph: ""
    workflow_source: ""
  }
  output {
    File out_stdout = stdout()
  }
}