version 1.0

task GxwfabstractexportOUTPUT {
  input {
    String gx_wf_abstract_export
    String var_input
    String? var_output
  }
  command <<<
    gxwf_abstract_export OUTPUT \
      ~{gx_wf_abstract_export} \
      ~{var_input} \
      ~{var_output}
  >>>
  runtime {
    docker: "quay.io/biocontainers/gxformat2:0.15.0--pyh864c0ab_0"
  }
  parameter_meta {
    gx_wf_abstract_export: ""
    var_input: ""
    var_output: ""
  }
  output {
    File out_stdout = stdout()
  }
}