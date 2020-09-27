version 1.0

task AlignmentProjector {
  input {
    String input_x_mfa
    String output_x_mfa
    String mfa_seq_input
    String mfa_seq_output
  }
  command <<<
    alignmentProjector \
      ~{input_x_mfa} \
      ~{output_x_mfa} \
      ~{mfa_seq_input} \
      ~{mfa_seq_output}
  >>>
  parameter_meta {
    input_x_mfa: ""
    output_x_mfa: ""
    mfa_seq_input: ""
    mfa_seq_output: ""
  }
  output {
    File out_stdout = stdout()
  }
}