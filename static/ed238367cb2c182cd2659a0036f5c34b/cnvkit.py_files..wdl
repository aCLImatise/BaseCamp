version 1.0

task CnvkitpyFiles {
  input {
    String cnv_kit_do_tpy
  }
  command <<<
    cnvkit_py files_ \
      ~{cnv_kit_do_tpy}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    cnv_kit_do_tpy: ""
  }
  output {
    File out_stdout = stdout()
  }
}