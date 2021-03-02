version 1.0

task Pbaapostlinksh {
  command <<<
    _pbaa_post_link_sh
  >>>
  runtime {
    docker: "quay.io/biocontainers/pbaa:0.1.3--0"
  }
  output {
    File out_stdout = stdout()
  }
}