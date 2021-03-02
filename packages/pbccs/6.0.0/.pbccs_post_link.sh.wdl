version 1.0

task Pbccspostlinksh {
  command <<<
    _pbccs_post_link_sh
  >>>
  runtime {
    docker: "quay.io/biocontainers/pbccs:6.0.0--1"
  }
  output {
    File out_stdout = stdout()
  }
}