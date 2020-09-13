version 1.0

task Ggdpostlinksh {
  command <<<
    _ggd_post_link_sh
  >>>
  output {
    File out_stdout = stdout()
  }
}