version 1.0

task Amptkpostlinksh {
  command <<<
    _amptk_post_link_sh
  >>>
  output {
    File out_stdout = stdout()
  }
}