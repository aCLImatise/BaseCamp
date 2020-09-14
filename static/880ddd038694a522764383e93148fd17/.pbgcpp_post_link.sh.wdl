version 1.0

task Pbgcpppostlinksh {
  command <<<
    _pbgcpp_post_link_sh
  >>>
  output {
    File out_stdout = stdout()
  }
}