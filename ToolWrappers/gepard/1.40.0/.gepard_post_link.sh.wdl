version 1.0

task Gepardpostlinksh {
  command <<<
    _gepard_post_link_sh
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}