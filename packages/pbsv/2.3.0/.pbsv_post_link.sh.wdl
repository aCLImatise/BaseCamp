version 1.0

task Pbsvpostlinksh {
  command <<<
    _pbsv_post_link_sh
  >>>
  output {
    File out_stdout = stdout()
  }
}