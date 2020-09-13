version 1.0

task Quastpostlinksh {
  command <<<
    _quast_post_link_sh
  >>>
  output {
    File out_stdout = stdout()
  }
}