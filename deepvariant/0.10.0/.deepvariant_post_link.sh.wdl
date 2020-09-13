version 1.0

task Deepvariantpostlinksh {
  command <<<
    _deepvariant_post_link_sh
  >>>
  output {
    File out_stdout = stdout()
  }
}