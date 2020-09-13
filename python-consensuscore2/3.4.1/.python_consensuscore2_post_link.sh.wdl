version 1.0

task Pythonconsensuscore2postlinksh {
  command <<<
    _python_consensuscore2_post_link_sh
  >>>
  output {
    File out_stdout = stdout()
  }
}