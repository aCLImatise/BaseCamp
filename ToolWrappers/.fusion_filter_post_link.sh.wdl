version 1.0

task Fusionfilterpostlinksh {
  command <<<
    _fusion_filter_post_link_sh
  >>>
  output {
    File out_stdout = stdout()
  }
}