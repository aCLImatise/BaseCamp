version 1.0

task Pbbampostlinksh {
  command <<<
    _pbbam_post_link_sh
  >>>
  runtime {
    docker: "quay.io/biocontainers/pbbam:1.6.0--h5b7e6e0_0"
  }
  output {
    File out_stdout = stdout()
  }
}