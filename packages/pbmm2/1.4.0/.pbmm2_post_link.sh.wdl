version 1.0

task Pbmm2postlinksh {
  command <<<
    _pbmm2_post_link_sh
  >>>
  runtime {
    docker: "quay.io/biocontainers/pbmm2:1.4.0--h56fc30b_0"
  }
  output {
    File out_stdout = stdout()
  }
}