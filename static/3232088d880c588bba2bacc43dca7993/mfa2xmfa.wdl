version 1.0

task Mfa2xmfa {
  input {
    String mfa_alignment_input
    String x_mfa_alignment_output
    String? unaligned
    String? fast_a
    String? var_output
  }
  command <<<
    mfa2xmfa \
      ~{mfa_alignment_input} \
      ~{x_mfa_alignment_output} \
      ~{unaligned} \
      ~{fast_a} \
      ~{var_output}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    mfa_alignment_input: ""
    x_mfa_alignment_output: ""
    unaligned: ""
    fast_a: ""
    var_output: ""
  }
  output {
    File out_stdout = stdout()
  }
}