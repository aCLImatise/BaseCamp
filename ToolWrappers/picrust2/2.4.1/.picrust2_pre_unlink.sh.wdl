version 1.0

task Picrust2preunlinksh {
  command <<<
    _picrust2_pre_unlink_sh
  >>>
  runtime {
    docker: "quay.io/biocontainers/picrust2:2.4.1--py_0"
  }
  output {
    File out_stdout = stdout()
  }
}