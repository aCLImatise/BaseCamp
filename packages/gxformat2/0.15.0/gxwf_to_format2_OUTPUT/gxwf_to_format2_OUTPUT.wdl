version 1.0

task Gxwftoformat2OUTPUT {
  input {
    Int gx_wf_to_format_two
    String var_input
    String? var_output
  }
  command <<<
    gxwf_to_format2 OUTPUT \
      ~{gx_wf_to_format_two} \
      ~{var_input} \
      ~{var_output}
  >>>
  runtime {
    docker: "quay.io/biocontainers/gxformat2:0.15.0--pyh864c0ab_0"
  }
  parameter_meta {
    gx_wf_to_format_two: ""
    var_input: ""
    var_output: ""
  }
  output {
    File out_stdout = stdout()
  }
}