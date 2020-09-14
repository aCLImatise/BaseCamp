version 1.0

task Recalladapterspostlinksh {
  command <<<
    _recalladapters_post_link_sh
  >>>
  output {
    File out_stdout = stdout()
  }
}