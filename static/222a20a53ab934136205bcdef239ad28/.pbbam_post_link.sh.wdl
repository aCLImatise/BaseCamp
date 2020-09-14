version 1.0

task Pbbampostlinksh {
  command <<<
    _pbbam_post_link_sh
  >>>
  output {
    File out_stdout = stdout()
  }
}