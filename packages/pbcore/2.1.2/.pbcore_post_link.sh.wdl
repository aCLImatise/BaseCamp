version 1.0

task Pbcorepostlinksh {
  command <<<
    _pbcore_post_link_sh
  >>>
  output {
    File out_stdout = stdout()
  }
}