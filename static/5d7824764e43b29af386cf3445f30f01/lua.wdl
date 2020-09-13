version 1.0

task Lua {
  input {
    String? execute_string
    Boolean? enter_interactive_mode
    String? require_library
    Boolean? show_version_information
    Boolean? ignore_environment_variables
    String? script
    String? args
  }
  command <<<
    lua \
      ~{script} \
      ~{args} \
      ~{if defined(execute_string) then ("-e " +  '"' + execute_string + '"') else ""} \
      ~{if (enter_interactive_mode) then "-i" else ""} \
      ~{if defined(require_library) then ("-l " +  '"' + require_library + '"') else ""} \
      ~{if (show_version_information) then "-v" else ""} \
      ~{if (ignore_environment_variables) then "-E" else ""}
  >>>
  parameter_meta {
    execute_string: "execute string 'stat'"
    enter_interactive_mode: "enter interactive mode after executing 'script'"
    require_library: "require library 'name'"
    show_version_information: "show version information"
    ignore_environment_variables: "ignore environment variables"
    script: ""
    args: ""
  }
  output {
    File out_stdout = stdout()
  }
}