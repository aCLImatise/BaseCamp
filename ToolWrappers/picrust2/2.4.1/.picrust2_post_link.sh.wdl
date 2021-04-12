version 1.0

task Picrust2postlinksh {
  command <<<
    _picrust2_post_link_sh
  >>>
  runtime {
    docker: "quay.io/biocontainers/picrust2:2.4.1--py_0"
  }
  output {
    File out_stdout = stdout()
  }
}