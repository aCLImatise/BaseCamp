version 1.0

task Hlalapostlinksh {
  command <<<
    _hla_la_post_link_sh
  >>>
  output {
    File out_stdout = stdout()
  }
}