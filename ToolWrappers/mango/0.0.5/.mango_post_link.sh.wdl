version 1.0

task Mangopostlinksh {
  command <<<
    _mango_post_link_sh
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}