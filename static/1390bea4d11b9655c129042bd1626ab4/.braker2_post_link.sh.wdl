version 1.0

task Braker2postlinksh {
  command <<<
    _braker2_post_link_sh
  >>>
  output {
    File out_stdout = stdout()
  }
}