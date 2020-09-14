version 1.0

task Pbcommandpostlinksh {
  command <<<
    _pbcommand_post_link_sh
  >>>
  output {
    File out_stdout = stdout()
  }
}