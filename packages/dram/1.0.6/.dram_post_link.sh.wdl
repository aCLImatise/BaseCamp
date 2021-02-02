version 1.0

task Drampostlinksh {
  command <<<
    _dram_post_link_sh
  >>>
  output {
    File out_stdout = stdout()
  }
}