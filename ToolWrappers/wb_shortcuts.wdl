version 1.0

task WbShortcuts {
  input {
    Boolean? version
    Boolean? list_functions
    Boolean? all_functions_help
    String arguments_dot
  }
  command <<<
    wb_shortcuts \
      ~{arguments_dot} \
      ~{if (version) then "-version" else ""} \
      ~{if (list_functions) then "-list-functions" else ""} \
      ~{if (all_functions_help) then "-all-functions-help" else ""}
  >>>
  parameter_meta {
    version: "display version info"
    list_functions: "show available functions"
    all_functions_help: "show all functions and their help info - VERY LONG"
    arguments_dot: "If the first argument is not recognized, all functions that start with the"
  }
  output {
    File out_stdout = stdout()
  }
}