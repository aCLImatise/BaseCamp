version 1.0

task Pbalignpostlinksh {
  command <<<
    _pbalign_post_link_sh
  >>>
  output {
    File out_stdout = stdout()
  }
}