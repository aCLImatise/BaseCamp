version 1.0

task Pythonconsensuscorepostlinksh {
  command <<<
    _python_consensuscore_post_link_sh
  >>>
  output {
    File out_stdout = stdout()
  }
}