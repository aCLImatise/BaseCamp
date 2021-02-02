version 1.0

task Isoseq3postlinksh {
  command <<<
    _isoseq3_post_link_sh
  >>>
  output {
    File out_stdout = stdout()
  }
}