version 1.0

task MauveToXMFA {
  input {
    String mauve_alignment_input
    String x_mfa_output
  }
  command <<<
    mauveToXMFA \
      ~{mauve_alignment_input} \
      ~{x_mfa_output}
  >>>
  parameter_meta {
    mauve_alignment_input: ""
    x_mfa_output: ""
  }
  output {
    File out_stdout = stdout()
  }
}