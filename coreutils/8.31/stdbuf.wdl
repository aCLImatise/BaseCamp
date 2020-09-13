version 1.0

task Stdbuf {
  input {
    String? adjust_standard_input_stream_buffering
    String? adjust_standard_output_stream_buffering
    String? error
    String option_dot_dot_dot
    String var_command
  }
  command <<<
    stdbuf \
      ~{option_dot_dot_dot} \
      ~{var_command} \
      ~{if defined(adjust_standard_input_stream_buffering) then ("--input " +  '"' + adjust_standard_input_stream_buffering + '"') else ""} \
      ~{if defined(adjust_standard_output_stream_buffering) then ("--output " +  '"' + adjust_standard_output_stream_buffering + '"') else ""} \
      ~{if defined(error) then ("--error " +  '"' + error + '"') else ""}
  >>>
  parameter_meta {
    adjust_standard_input_stream_buffering: "adjust standard input stream buffering"
    adjust_standard_output_stream_buffering: "adjust standard output stream buffering"
    error: "adjust standard error stream buffering"
    option_dot_dot_dot: ""
    var_command: ""
  }
  output {
    File out_stdout = stdout()
  }
}