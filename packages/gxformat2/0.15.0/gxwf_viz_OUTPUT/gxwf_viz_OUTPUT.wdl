version 1.0

task GxwfvizOUTPUT {
  input {
    String gx_wf_viz
    String var_input
    String? var_output
  }
  command <<<
    gxwf_viz OUTPUT \
      ~{gx_wf_viz} \
      ~{var_input} \
      ~{var_output}
  >>>
  runtime {
    docker: "quay.io/biocontainers/gxformat2:0.15.0--pyh864c0ab_0"
  }
  parameter_meta {
    gx_wf_viz: ""
    var_input: ""
    var_output: ""
  }
  output {
    File out_stdout = stdout()
  }
}