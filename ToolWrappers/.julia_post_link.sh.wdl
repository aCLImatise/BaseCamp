version 1.0

task Juliapostlinksh {
  command <<<
    _julia_post_link_sh
  >>>
  output {
    File out_stdout = stdout()
  }
}