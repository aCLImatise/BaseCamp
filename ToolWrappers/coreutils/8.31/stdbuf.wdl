version 1.0

task Stdbuf {
  input {
    String? adjust_standard_input_stream
    String? adjust_standard_output_stream
    String? error
    String option_dot_dot_dot
    String var_command
  }
  command <<<
    stdbuf \
      ~{option_dot_dot_dot} \
      ~{var_command} \
      ~{if defined(adjust_standard_input_stream) then ("--input " +  '"' + adjust_standard_input_stream + '"') else ""} \
      ~{if defined(adjust_standard_output_stream) then ("--output " +  '"' + adjust_standard_output_stream + '"') else ""} \
      ~{if defined(error) then ("--error " +  '"' + error + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    adjust_standard_input_stream: "adjust standard input stream buffering"
    adjust_standard_output_stream: "adjust standard output stream buffering"
    error: "adjust standard error stream buffering"
    option_dot_dot_dot: ""
    var_command: ""
  }
  output {
    File out_stdout = stdout()
  }
}