version 1.0

task Splitsamsh {
  input {
    String var_input
    String plus_output
    String minus_output
    String unmapped_output
  }
  command <<<
    splitsam_sh \
      ~{var_input} \
      ~{plus_output} \
      ~{minus_output} \
      ~{unmapped_output}
  >>>
  runtime {
    docker: "quay.io/biocontainers/bbmap:38.90--h1296035_0"
  }
  parameter_meta {
    var_input: ""
    plus_output: ""
    minus_output: ""
    unmapped_output: ""
  }
  output {
    File out_stdout = stdout()
  }
}