version 1.0

task WbShortcuts {
  input {
    Boolean? version
    Boolean? list_functions
    Boolean? all_functions_help
  }
  command <<<
    wb_shortcuts \
      ~{true="-version" false="" version} \
      ~{true="-list-functions" false="" list_functions} \
      ~{true="-all-functions-help" false="" all_functions_help}
  >>>
  parameter_meta {
    version: "display version info"
    list_functions: "show available functions"
    all_functions_help: "show all functions and their help info - VERY LONG"
  }
}