version 1.0

task Pbcoretoolspostlinksh {
  command <<<
    _pbcoretools_post_link_sh
  >>>
  output {
    File out_stdout = stdout()
  }
}