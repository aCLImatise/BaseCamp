version 1.0

task Blasrpostlinksh {
  command <<<
    _blasr_post_link_sh
  >>>
  output {
    File out_stdout = stdout()
  }
}