version 1.0

task Viralngspostlinksh {
  command <<<
    _viral_ngs_post_link_sh
  >>>
  output {
    File out_stdout = stdout()
  }
}