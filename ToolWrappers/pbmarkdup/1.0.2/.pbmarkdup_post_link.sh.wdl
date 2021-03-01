version 1.0

task Pbmarkduppostlinksh {
  command <<<
    _pbmarkdup_post_link_sh
  >>>
  runtime {
    docker: "quay.io/biocontainers/pbmarkdup:1.0.2--0"
  }
  output {
    File out_stdout = stdout()
  }
}