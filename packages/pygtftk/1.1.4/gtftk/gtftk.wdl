version 1.0

task Gtftk {
  input {
    Boolean? bash_comp
    Boolean? plugin_tests
    Boolean? plugin_tests_no_conn
    Boolean? system_info
    Boolean? plugin_path
    Boolean? list_plugins
  }
  command <<<
    gtftk \
      ~{if (bash_comp) then "--bash-comp" else ""} \
      ~{if (plugin_tests) then "--plugin-tests" else ""} \
      ~{if (plugin_tests_no_conn) then "--plugin-tests-no-conn" else ""} \
      ~{if (system_info) then "--system-info" else ""} \
      ~{if (plugin_path) then "--plugin-path" else ""} \
      ~{if (list_plugins) then "--list-plugins" else ""}
  >>>
  parameter_meta {
    bash_comp: "Get a script to activate bash completion. (default: False)"
    plugin_tests: "Display bats tests for all plugin. (default: False)"
    plugin_tests_no_conn: "Display bats tests for plugins not relying on server conn. (default: False)"
    system_info: "Display some info about the system. (default: False)"
    plugin_path: "Print plugin path (default: False)"
    list_plugins: "Get the list of plugins. (default: False)"
  }
  output {
    File out_stdout = stdout()
  }
}