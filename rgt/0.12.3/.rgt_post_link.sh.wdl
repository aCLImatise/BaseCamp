version 1.0

task Rgtpostlinksh {
  command <<<
    _rgt_post_link_sh
  >>>
  output {
    File out_stdout = stdout()
  }
}