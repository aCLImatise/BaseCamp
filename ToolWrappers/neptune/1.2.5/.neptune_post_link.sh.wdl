version 1.0

task Neptunepostlinksh {
  command <<<
    _neptune_post_link_sh
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}