version 1.0

task CnvkitpyDepths {
  input {
    String cnv_kit_do_tpy
  }
  command <<<
    cnvkit_py depths_ \
      ~{cnv_kit_do_tpy}
  >>>
  runtime {
    docker: "quay.io/biocontainers/cnvkit:0.9.8--py_0"
  }
  parameter_meta {
    cnv_kit_do_tpy: ""
  }
  output {
    File out_stdout = stdout()
  }
}