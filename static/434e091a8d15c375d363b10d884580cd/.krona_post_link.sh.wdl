version 1.0

task Kronapostlinksh {
  command <<<
    _krona_post_link_sh
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}