version 1.0

task Slnckypostlinksh {
  command <<<
    _slncky_post_link_sh
  >>>
  output {
    File out_stdout = stdout()
  }
}