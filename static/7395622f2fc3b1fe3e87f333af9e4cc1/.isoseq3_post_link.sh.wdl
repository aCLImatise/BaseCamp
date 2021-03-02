version 1.0

task Isoseq3postlinksh {
  command <<<
    _isoseq3_post_link_sh
  >>>
  runtime {
    docker: "quay.io/biocontainers/isoseq3:3.4.0--0"
  }
  output {
    File out_stdout = stdout()
  }
}