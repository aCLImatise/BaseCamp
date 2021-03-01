version 1.0

task Metawattpostlinksh {
  command <<<
    _metawatt_post_link_sh
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}