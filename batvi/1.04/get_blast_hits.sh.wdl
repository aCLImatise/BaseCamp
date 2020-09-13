version 1.0

task GetBlastHitssh {
  input {
    Boolean? run_command_input
    Boolean? input_separated_nul
    Boolean? print_command_stderr
    Boolean? str_stops_processing
    String? pass_more_args
    String? pass_command_line
    Boolean? exit_size_exceeded
    String xargs
    String? prog
    String? args
  }
  command <<<
    get_blast_hits_sh \
      ~{xargs} \
      ~{prog} \
      ~{args} \
      ~{if (run_command_input) then "-r" else ""} \
      ~{if (input_separated_nul) then "-0" else ""} \
      ~{if (print_command_stderr) then "-t" else ""} \
      ~{if (str_stops_processing) then "-e" else ""} \
      ~{if defined(pass_more_args) then ("-n " +  '"' + pass_more_args + '"') else ""} \
      ~{if defined(pass_command_line) then ("-s " +  '"' + pass_command_line + '"') else ""} \
      ~{if (exit_size_exceeded) then "-x" else ""}
  >>>
  parameter_meta {
    run_command_input: "Don't run command if input is empty"
    input_separated_nul: "Input is separated by NUL characters"
    print_command_stderr: "Print the command on stderr before execution"
    str_stops_processing: "[STR] STR stops input processing"
    pass_more_args: "Pass no more than N args to PROG"
    pass_command_line: "Pass command line of no more than N bytes"
    exit_size_exceeded: "Exit if size is exceeded"
    xargs: ""
    prog: ""
    args: ""
  }
  output {
    File out_stdout = stdout()
  }
}