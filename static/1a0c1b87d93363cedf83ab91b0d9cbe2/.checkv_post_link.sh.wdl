version 1.0

task Checkvpostlinksh {
  command <<<
    _checkv_post_link_sh
  >>>
  output {
    File out_stdout = stdout()
  }
}