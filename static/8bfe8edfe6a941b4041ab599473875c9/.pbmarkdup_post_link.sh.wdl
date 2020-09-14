version 1.0

task Pbmarkduppostlinksh {
  command <<<
    _pbmarkdup_post_link_sh
  >>>
  output {
    File out_stdout = stdout()
  }
}