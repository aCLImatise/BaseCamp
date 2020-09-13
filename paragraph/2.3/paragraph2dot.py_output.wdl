version 1.0

task Paragraph2dotpyOutput {
  input {
    Int paragraph_two_dot_do_tpy
    String var_input
    String var_output
  }
  command <<<
    paragraph2dot_py output \
      ~{paragraph_two_dot_do_tpy} \
      ~{var_input} \
      ~{var_output}
  >>>
  parameter_meta {
    paragraph_two_dot_do_tpy: ""
    var_input: ""
    var_output: ""
  }
  output {
    File out_stdout = stdout()
  }
}