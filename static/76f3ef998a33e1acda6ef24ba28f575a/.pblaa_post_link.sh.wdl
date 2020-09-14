version 1.0

task Pblaapostlinksh {
  command <<<
    _pblaa_post_link_sh
  >>>
  output {
    File out_stdout = stdout()
  }
}