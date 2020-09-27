version 1.0

task Vmatchpostlinksh {
  command <<<
    _vmatch_post_link_sh
  >>>
  output {
    File out_stdout = stdout()
  }
}