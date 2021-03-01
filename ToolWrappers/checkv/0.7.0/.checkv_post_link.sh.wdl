version 1.0

task Checkvpostlinksh {
  command <<<
    _checkv_post_link_sh
  >>>
  runtime {
    docker: "quay.io/biocontainers/checkv:0.7.0--py_1"
  }
  output {
    File out_stdout = stdout()
  }
}