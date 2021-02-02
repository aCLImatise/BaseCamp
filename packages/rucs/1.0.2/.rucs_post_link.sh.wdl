version 1.0

task Rucspostlinksh {
  command <<<
    _rucs_post_link_sh
  >>>
  output {
    File out_stdout = stdout()
  }
}