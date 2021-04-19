version 1.0

task Deepvariantpostlinksh {
  command <<<
    _deepvariant_post_link_sh
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}