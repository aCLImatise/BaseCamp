version 1.0

task Pbccspostlinksh {
  command <<<
    _pbccs_post_link_sh
  >>>
  output {
    File out_stdout = stdout()
  }
}