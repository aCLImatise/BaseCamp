version 1.0

task NestIndirect {
  input {
    String? execute_cmd_exit
    Int? user_args
    Boolean? debug
  }
  command <<<
    nest_indirect \
      ~{if defined(execute_cmd_exit) then ("-c " +  '"' + execute_cmd_exit + '"') else ""} \
      ~{if defined(user_args) then ("--userargs " +  '"' + user_args + '"') else ""} \
      ~{if (debug) then "--debug" else ""}
  >>>
  parameter_meta {
    execute_cmd_exit: "Execute cmd and exit"
    user_args: ":...   put user defined arguments in statusdict::userargs"
    debug: "start in debug mode (implies --verbosity=ALL)"
  }
  output {
    File out_stdout = stdout()
  }
}