version 1.0

task Limapostlinksh {
  command <<<
    _lima_post_link_sh
  >>>
  output {
    File out_stdout = stdout()
  }
}