version 1.0

task Womtool {
  input {
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
      ~{if defined(jar) then ("-jar " +  '"' + jar + '"') else ""}
  >>>
  parameter_meta {
    jar: ""
    java: ""
    validate_vertical_line_inputs_vertical_line_parse_vertical_line_highlight_vertical_line_graph_vertical_line_upgrade_vertical_line_wom_graph: ""
    workflow_source: ""
  }
}