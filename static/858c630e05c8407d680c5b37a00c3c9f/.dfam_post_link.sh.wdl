version 1.0

task Dfampostlinksh {
  command <<<
    _dfam_post_link_sh
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}