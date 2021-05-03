version 1.0

task Pbsvpostlinksh {
  command <<<
    _pbsv_post_link_sh
  >>>
  runtime {
    docker: "quay.io/biocontainers/pbsv:2.6.0--h9ee0642_0"
  }
  output {
    File out_stdout = stdout()
  }
}