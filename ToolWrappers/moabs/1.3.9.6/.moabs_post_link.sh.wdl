version 1.0

task Moabspostlinksh {
  command <<<
    _moabs_post_link_sh
  >>>
  output {
    File out_stdout = stdout()
  }
}