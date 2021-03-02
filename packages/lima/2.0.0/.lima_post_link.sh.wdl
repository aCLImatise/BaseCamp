version 1.0

task Limapostlinksh {
  command <<<
    _lima_post_link_sh
  >>>
  runtime {
    docker: "quay.io/biocontainers/lima:2.0.0--0"
  }
  output {
    File out_stdout = stdout()
  }
}