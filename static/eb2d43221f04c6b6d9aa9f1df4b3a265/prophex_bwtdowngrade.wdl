version 1.0

task ProphexBwtdowngrade {
  input {
    String input_dot_bwt
    String output_dot_bwt
  }
  command <<<
    prophex bwtdowngrade \
      ~{input_dot_bwt} \
      ~{output_dot_bwt}
  >>>
  parameter_meta {
    input_dot_bwt: ""
    output_dot_bwt: ""
  }
  output {
    File out_stdout = stdout()
  }
}