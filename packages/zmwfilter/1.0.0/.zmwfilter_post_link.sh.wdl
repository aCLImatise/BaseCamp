version 1.0

task Zmwfilterpostlinksh {
  command <<<
    _zmwfilter_post_link_sh
  >>>
  runtime {
    docker: "quay.io/biocontainers/zmwfilter:1.0.0--0"
  }
  output {
    File out_stdout = stdout()
  }
}