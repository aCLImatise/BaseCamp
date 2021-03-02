version 1.0

task Mugsypostlinksh {
  command <<<
    _mugsy_post_link_sh
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}