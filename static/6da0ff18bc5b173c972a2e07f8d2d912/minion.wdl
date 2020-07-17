version 1.0

task Minion {
  input {
    String search_adapter_vertical_line_help_vertical_line_version
  }
  command <<<
    minion \
      ~{search_adapter_vertical_line_help_vertical_line_version}
  >>>
  parameter_meta {
    search_adapter_vertical_line_help_vertical_line_version: ""
  }
}