version 1.0

task Drampostlinksh {
  command <<<
    _dram_post_link_sh
  >>>
  runtime {
    docker: "quay.io/biocontainers/dram:1.2.1--py_0"
  }
  output {
    File out_stdout = stdout()
  }
}