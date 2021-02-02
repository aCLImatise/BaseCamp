version 1.0

task Pbmm2postlinksh {
  command <<<
    _pbmm2_post_link_sh
  >>>
  output {
    File out_stdout = stdout()
  }
}