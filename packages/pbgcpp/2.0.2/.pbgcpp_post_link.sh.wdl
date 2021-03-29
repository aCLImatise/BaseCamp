version 1.0

task Pbgcpppostlinksh {
  command <<<
    _pbgcpp_post_link_sh
  >>>
  runtime {
    docker: "quay.io/biocontainers/pbgcpp:2.0.2--0"
  }
  output {
    File out_stdout = stdout()
  }
}