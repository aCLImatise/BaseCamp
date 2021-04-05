version 1.0

task Dfampostlinksh {
  command <<<
    _dfam_post_link_sh
  >>>
  runtime {
    docker: "quay.io/biocontainers/dfam:3.3--hdfd78af_0"
  }
  output {
    File out_stdout = stdout()
  }
}