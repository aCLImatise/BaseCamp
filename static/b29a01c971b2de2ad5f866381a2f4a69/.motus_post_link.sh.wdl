version 1.0

task Motuspostlinksh {
  command <<<
    _motus_post_link_sh
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}