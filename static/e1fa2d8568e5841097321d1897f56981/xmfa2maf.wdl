version 1.0

task Xmfa2maf {
  input {
    String x_mfa_input
    String maf_output
  }
  command <<<
    xmfa2maf \
      ~{x_mfa_input} \
      ~{maf_output}
  >>>
  parameter_meta {
    x_mfa_input: ""
    maf_output: ""
  }
  output {
    File out_stdout = stdout()
  }
}